//
//  main.swift
//  AutomateZFile
//
//  Created by Stijn on 25/02/2019.
//  Copyright © 2019 dooz. All rights reserved.
//

import Arguments
import Foundation
import GitHooks
import Highway
import SignPost
import SourceryWorker
import SwiftFormatWorker
import Terminal
import ZFile

let signPost = SignPost.shared
let dispatchGroup = DispatchGroup()

var zfRunner: HighwayRunner?

func handleTestOutput(_ testOutput: @escaping HighwayRunner.SyncTestOutput) { do { signPost.verbose("\(try testOutput())") } catch { signPost.error("\(error)") } }
func handleSourceryOutput(_ sourceryOutput: @escaping SourceryWorker.SyncOutput) { do { signPost.verbose("\(try sourceryOutput())") } catch { signPost.error("\(error)") } }
func handleSwiftformat(_ sourceryOutput: @escaping HighwayRunner.SyncSwiftformat) { do { signPost.verbose("\(try sourceryOutput())") } catch { signPost.error("\(error)") } }

do
{
    let gitHooksSetup = GithooksSetup()

    let zfileRoot = try File(path: #file).parentFolder().parentFolder().parentFolder().parentFolder()
    let dependencyService = DependencyService(in: zfileRoot)
    let dumpService = DumpService(swiftPackageFolder: zfileRoot)
    let package = try Highway.package(for: zfileRoot, dependencyService: dependencyService, dumpService: dumpService)
    let sourceryBuilder = SourceryBuilder(dependencyService: DependencyService(in: try zfileRoot.subfolder(named: "ZFHighwaySetup")))

    let highway = try Highway(package: package, dependencyService: dependencyService, sourceryBuilder: sourceryBuilder, highwaySetupExecutableName: "ZFHighwaySetup")

    signPost.message("🚀 \(highway.package.name) ...")

    zfRunner = HighwayRunner(highway: highway, dispatchGroup: dispatchGroup)

    try gitHooksSetup.write(in: zfileRoot)

    zfRunner?.runSourcery(handleSourceryOutput)

    dispatchGroup.notify(queue: DispatchQueue.main)
    {
        guard let errors = zfRunner?.errors, errors.count == 0 else
        {
            signPost.error("")
            exit(EXIT_FAILURE)
        }
        zfRunner?.runSwiftformat(handleSwiftformat)
        dispatchGroup.wait()

        guard let errors2 = zfRunner?.errors, errors2.count == 0 else
        {
            signPost.error("")
            exit(EXIT_FAILURE)
        }

        zfRunner?.runTests(handleTestOutput)
        dispatchGroup.wait()
        guard let errors3 = zfRunner?.errors, errors3.count == 0 else
        {
            signPost.error("")
            exit(EXIT_FAILURE)
        }

        signPost.message("🚀 \(highway.package.name) ✅")
        exit(EXIT_SUCCESS)
    }

    dispatchMain()
}
catch
{
    signPost.error("\(error)")
    signPost.message("🚀 ZFHighwaySetup ❌")
    exit(EXIT_FAILURE)
}
