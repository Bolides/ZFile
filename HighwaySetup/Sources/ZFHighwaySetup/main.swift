//
//  main.swift
//  AutomateZFile
//
//  Created by Stijn on 25/02/2019.
//  Copyright © 2019 dooz. All rights reserved.
//

import Foundation
import SignPost
import Arguments
import SourceryWorker
import Terminal
import ZFRunner

let signPost = SignPost.shared
let dispatchGroup = DispatchGroup()

var zfRunner: ZFRunner?

do {
    let dependencies = try SwiftPackageDependencyService().swiftPackage
    let dump = try SwiftPackageDumpService(swiftPackageDependencies: dependencies).swiftPackageDump
    
    let sourceryWorker = try ZFileSourceryWorker(dependencies: dependencies, dump: dump, dispatchGroup: dispatchGroup)
    zfRunner = ZFRunner(sourcery: sourceryWorker)
    
    try zfRunner?.runSourcery()
    
    dispatchGroup.notify(queue: DispatchQueue.main) {
        
        guard let fail = zfRunner?.fail, !fail else {
            signPost.error("")
            exit(EXIT_FAILURE)
        }
        do {
            try zfRunner?.runTests()
            signPost.message("🚀 ZFile automate ✅")
            exit(EXIT_SUCCESS)
        } catch {
            signPost.error("\(error)")
            signPost.error("🚀 ZFile automate ❌")
            exit(EXIT_FAILURE)
        }
    }
    
    dispatchMain()

} catch {
    signPost.error("\(error)")
    exit(EXIT_FAILURE)
}



