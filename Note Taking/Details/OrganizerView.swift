//
//  OrganizerView.swift
//  Note Taking
//
//  Created by dane legassick on 3/1/23.
//

import SwiftUI

struct OrganizerView: View {
    @EnvironmentObject var notesVM: NotesViewModel
    
    var organizer: Organizer
    var notemodels: [NoteModel] {
        return notesVM.notemodels.filter { $0.organizer == organizer.rawValue }
    }
    
    var body: some View {
        ScrollView {
            NoteList(notemodels: notemodels)
        }
        .navigationTitle(organizer.rawValue)
    }
}

struct OrganizerView_Previews: PreviewProvider {
    static var previews: some View {
        OrganizerView(organizer: Organizer.work)
            .environmentObject(NotesViewModel())
    }
}
