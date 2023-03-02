//
//  HomeView.swift
//  Note Taking
//
//  Created by dane legassick on 3/1/23.
//

import SwiftUI

struct HomeView: View{
    @EnvironmentObject var notesVM: NotesViewModel
    
    var body: some View {
        NavigationView {
            ScrollView{
                NoteList(notemodels: notesVM.notemodels)
            }
            .navigationTitle("My Notes")
        }
        .navigationViewStyle(.stack)

    }
}


struct HomeView_Previews: PreviewProvider{
    static var previews: some View {
        HomeView()
            .environmentObject(NotesViewModel())
    }
}
