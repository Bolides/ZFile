//
//  ViewController.swift
//  AutomateZFile
//
//  Created by Stijn on 21/12/2018.
//  Copyright © 2018 dooz. All rights reserved.
//

import Cocoa
import SignPost

class AutomateZFileViewController: NSViewController {

    lazy var signPost: SignPostProtocol = SignPost.shared

    @IBAction func runSourcery(_ sender: NSButton) {
        do {
            signPost.message("🧙‍♂️ Running Sourcery for ZFile from button.")
            let sourceryWorker = try ZFileSourceryWorker(signPost: signPost)
            try sourceryWorker.attempt()
            signPost.message("🧙‍♂️ ✅ output can be found at \n\(sourceryWorker.autoGeneratedCodeFolder.path)\n🧙‍♂️")
        } catch {
            signPost.error("❌\n\(error)\n❌")
        }
    }
    
}
