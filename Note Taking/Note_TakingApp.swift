//
//  Note_TakingApp.swift
//  Note Taking
//
//  Created by dane legassick on 3/1/23.
//

import SwiftUI

@main
struct Note_TakingApp: App {
//    let persistenceController = PersistenceController.shared

    @StateObject var notesViewModel = NotesViewModel()
    @StateObject var dataController = DataController()
    
    @AppStorage("isDarkMode") private var isDarkMode = false
    @AppStorage("selectedLanguage") private var selectedLanguage = "English"


    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(notesViewModel)
                .environment(\.managedObjectContext, dataController.container.viewContext)
                .preferredColorScheme(isDarkMode ? .dark : .light)
                

        }
    }
}
