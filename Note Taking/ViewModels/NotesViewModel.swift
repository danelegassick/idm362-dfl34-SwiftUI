//
//  NoteViewModel.swift
//  Note Taking
//
//  Created by dane legassick on 3/2/23.
//

import Foundation

class NotesViewModel: ObservableObject {
    @Published private (set) var notemodels: [NoteModel] = []
    
    init() {
        notemodels = NoteModel.all
    }
    
    func addNote(notemodel: NoteModel) {
        notemodels.append(notemodel)
    }
}
