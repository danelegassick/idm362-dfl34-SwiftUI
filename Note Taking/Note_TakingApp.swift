//
//  Note_TakingApp.swift
//  Note Taking
//
//  Created by dane legassick on 3/1/23.
//

import SwiftUI

@main
struct Note_TakingApp: App {
    @StateObject var notesViewModel = NotesViewModel()
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(notesViewModel)
        }
    }
}
