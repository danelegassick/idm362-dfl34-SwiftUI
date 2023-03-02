//
//  TabBar.swift
//  Note Taking
//
//  Created by dane legassick on 3/1/23.
//

import SwiftUI

struct TabBar: View{
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
            OrganizersView()
                .tabItem {
                    Label("Organizers", systemImage: "square.fill.text.grid.1x2")
                }
            NewNoteView()
                .tabItem {
                    Label("New Note", systemImage: "plus")
                }
        }
    }
}

struct TabBar_Previews: PreviewProvider{
    static var previews: some View {
        TabBar()
            .environmentObject(NotesViewModel())
    }
}
