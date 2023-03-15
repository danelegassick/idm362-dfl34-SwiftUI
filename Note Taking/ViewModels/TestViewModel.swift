//
//  TestViewModel.swift
//  Note Taking
//
//  Created by dane legassick on 3/15/23.
//

import Foundation
import CoreData

class TestViewModel: ObservableObject {
    @Published private (set) var notes: [Note] = []
//    @Environment(\.managedObjectContext) var moc
//    @FetchRequest(sortDescriptors: []) var notes: FetchedResults<Note>
    
    init() {
        notes = Note.all
    }
    
    func addNote(note: Note) {
        notes.append(note)
    }
}
