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

var sourceryWorker: ZFileSourceryWorker?

do {
    let dependencies = try SwiftPackageDependencyService().swiftPackage
    let dump = try SwiftPackageDumpService(swiftPackageDependencies: dependencies).swiftPackageDump
    
    sourceryWorker = try ZFileSourceryWorker(dependencies: dependencies, dump: dump, dispatchGroup: dispatchGroup)

    signPost.message("🚀 ZFile automate started ... ")
    signPost.message("🚀 Sourcery started ... ")

    try sourceryWorker?.attemptCreateWorkers()
    
    dispatchGroup.enter()
    sourceryWorker?.attemptRunSourcery()
    
    dispatchGroup.notify(queue: DispatchQueue.main) {
        
        guard let fail = sourceryWorker?.fail, !fail else {
            signPost.error("")
            exit(EXIT_FAILURE)
        }
        signPost.message("🚀 ZFile automate finished ✅")
        exit(EXIT_SUCCESS)
    }
    
    dispatchMain()

} catch {
    signPost.error("\(error)")
    exit(EXIT_FAILURE)
}



