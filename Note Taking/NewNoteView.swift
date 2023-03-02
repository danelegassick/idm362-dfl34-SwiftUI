//
//  NewNoteView.swift
//  Note Taking
//
//  Created by dane legassick on 3/2/23.
//

import SwiftUI

struct NewNoteView: View {
    @State private var showAddNote = false
    var body: some View {
        NavigationView{
            Button("Tap To Add Note") {
                showAddNote = true
            }
            .navigationTitle("New Note")
        }
        .navigationViewStyle(.stack)
        .sheet(isPresented: $showAddNote) {
            AddNoteView()
        }
    }
}

struct NewNoteView_Previews: PreviewProvider {
    static var previews: some View {
        NewNoteView()
    }
}
