//
//  Atelier6_StateApp.swift
//  Atelier6-State
//
//  Created by CHEBIHI FAYCAL on 11/5/2023.
//

import SwiftUI

@main
struct Atelier6_StateApp: App {
    
    @StateObject private var task = Task(name: "Learn IOS with SwiftUI", isComplete: false, lastComplete: nil)
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(task)
        }
    }
}
