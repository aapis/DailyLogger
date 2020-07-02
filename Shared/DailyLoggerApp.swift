//
//  DailyLoggerApp.swift
//  Shared
//
//  Created by Ryan Priebe on 2020-07-02.
//

import SwiftUI

@main
struct DailyLoggerApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: DailyLoggerDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
