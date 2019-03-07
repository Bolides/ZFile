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

let signPost = SignPost.shared
let dispatchGroup = DispatchGroup()

var fail = false
var sourceryWorker: ZFileSourceryWorker?

do {
    sourceryWorker = try ZFileSourceryWorker(disk: try Disk(), signPost: signPost)

    signPost.message("🚀 ZFile automate started ... ")
    signPost.message("🚀 Sourcery started ... ")

    try sourceryWorker?.attemptCreateWorkers()
    
    sourceryWorker?.workers?.forEach {
        dispatchGroup.enter()
        $0.attempt {
            do {
                let output = try $0()
                signPost.verbose("\(output.joined(separator: "\n"))")
                dispatchGroup.leave()
            } catch {
                fail = true
                signPost.error("\(error)")
                dispatchGroup.leave()
            }
        }
    }
} catch {
    signPost.error("\(error)")
}

dispatchGroup.notify(queue: DispatchQueue.main) {

    guard !fail else {
        signPost.error("")
        exit(EXIT_FAILURE)
    }
    signPost.message("🚀 ZFile automate finished ✅")
    exit(EXIT_SUCCESS)
}

dispatchMain()
