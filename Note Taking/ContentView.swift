//
//  ContentView.swift
//  Note Taking
//
//  Created by dane legassick on 3/1/23.
//
import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabBar()
    }
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(NotesViewModel())
    }
}


    //    @State private var notes = [
    //        Note(id: UUID(), title: "First Note", body: "This is my first note."),
    //        Note(id: UUID(), title: "Second Note", body: "This is my second note.")
    //    ]
    //    @State private var selectedNote: Note?
    //
    //    var body: some View {
    //
    //        NavigationView {
    //            List(notes) { note in
    //                NavigationLink(destination: NoteEditorView(note: $notes[getIndex(for: note)])) {
    //                    NoteRow(note: note)
    //                }
    //            }
    //            .navigationTitle("Notes")
    //            .navigationBarItems(trailing: Button(action: addNote) {
    //                Image(systemName: "plus")
    //                    .foregroundColor(.purple)
    //            })
    //        }
    //    }
    //
    //    private func getIndex(for note: Note) -> Int {
    //        guard let index = notes.firstIndex(where: { $0.id == note.id }) else {
    //            fatalError("Could not find note in array.")
    //        }
    //        return index
    //    }
    //
    //    private func addNote() {
    //        let newNote = Note(id: UUID(), title: "", body: "")
    //        notes.append(newNote)
    //        selectedNote = newNote
    //    }


    //struct NoteRow: View {
    //    let note: Note
    //
    //    var body: some View {
    //        VStack(alignment: .leading) {
    //            Text(note.title)
    //                .font(.headline)
    //                .foregroundColor(.purple)
    //            Text(note.body)
    //                .font(.subheadline)
    //        }
    //    }
    //}
    //
    //struct NoteEditorView: View {
    //    @Binding var note: Note
    //
    //    var body: some View {
    //        Form {
    //            Section(header: Text("Title")) {
    //                TextField("Title", text: $note.title)
    //            }
    //            Section(header: Text("Body")) {
    //                TextEditor(text: $note.body)
    //            }
    //        }
    //        .navigationTitle("Edit Note")
    //
    //    }
    //}

    //struct Note: Identifiable {
    //    let id: UUID
    //    var title: String
    //    var body: String
    //}
