//
//  ToDoListMVVMApp.swift
//  ToDoListMVVM
//
//  Created by Harun Kizilkaya on 20.07.23.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListMVVMApp: App {
    // Connect to FireBase Backend
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
