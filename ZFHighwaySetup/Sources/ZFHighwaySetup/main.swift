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

signPost.message("🚀 ZFHighwaySetup ...")
do
{
    let setupRoot = try File(path: #file).parentFolder().parentFolder().parentFolder()
    let rootPackage = try Highway.package(for: setupRoot.parentFolder())

    let highway = try Highway(rootPackage: rootPackage, highwaySetupPackage: nil)

    zfRunner = HighwayRunner(highway: highway, dispatchGroup: dispatchGroup)

    zfRunner?.runSourcery(handleSourceryOutput)

    dispatchGroup.notify(queue: DispatchQueue.main)
    {
        guard let errors = zfRunner?.errors, errors.count == 0 else
        {
            signPost.error("")
            exit(EXIT_FAILURE)
        }
        do
        {
            try zfRunner?.addGithooksPrePush()

            zfRunner?.runSwiftformat(handleSwiftformat)
            dispatchGroup.wait()

            zfRunner?.runTests(handleTestOutput)

            signPost.message("🚀 ZFHighwaySetup ✅")
            exit(EXIT_SUCCESS)
        }
        catch
        {
            signPost.error("\(error)")
            signPost.message("🚀 ZFHighwaySetup ❌")
            exit(EXIT_FAILURE)
        }
    }

    dispatchMain()
}
catch
{
    signPost.error("\(error)")
    signPost.message("🚀 ZFHighwaySetup ❌")
    exit(EXIT_FAILURE)
}
