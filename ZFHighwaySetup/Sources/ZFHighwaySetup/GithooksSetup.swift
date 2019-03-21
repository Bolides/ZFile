//
//  GithooksSetup.swift
//  TSHighwaySetup
//
//  Created by Stijn Willems on 15/03/2019.
//

import Errors
import Foundation
import SignPost
import SourceryAutoProtocols
import ZFile

public protocol GithooksSetupProtocol: AutoMockable
{
    // sourcery:inline:GithooksSetup.AutoGenerateProtocol
    func write(in gitHooksFolder: FolderProtocol) throws
    // sourcery:end
}

public struct GithooksSetup: GithooksSetupProtocol, AutoGenerateProtocol
{
    public static let shared: GithooksSetupProtocol = GithooksSetup()

    public static let script: String = """
        #!/usr/bin/env bash
        # fail if any commands fails
        set -e
        # debug log
        set -x

        cd ./ZFHighwaySetup
        # Build setup executable
        if [ ! -f ./.build/x86_64-apple-macosx10.10/release/ZFHighwaySetup ]; then
        echo "🚀 ZFHighwaySetup, not found - building ..."
        swift build --product ZFHighwaySetup -c release --static-swift-stdlib
        echo "🚀 ZFHighwaySetup, not found - building ✅"

        fi

        # Execute the script
        ./.build/x86_64-apple-macosx10.10/release/ZFHighwaySetup
    """

    public func write(in folder: FolderProtocol) throws
    {
        do
        {
            let gitHooksFolder = try folder.subfolder(atPath: ".git/hooks")

            var prePushFile: FileProtocol!

            do
            {
                prePushFile = try gitHooksFolder.file(named: "pre-push.sample")
                try prePushFile.rename(to: "pre-push", keepExtension: false)
            }
            catch
            {
                prePushFile = try gitHooksFolder.file(named: "pre-push")
            }

            try prePushFile.write(string: GithooksSetup.script)
            signPost.message("💪🏻\(prePushFile.path) \n contains script that will run before every push.")
        }
        catch
        {
            throw HighwayError.highwayError(atLocation: "\(GithooksSetup.self) \(#function) \(#line)", error: error)
        }
    }
}
