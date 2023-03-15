//
//  AddTestView.swift
//  Note Taking
//
//  Created by dane legassick on 3/15/23.
//

import SwiftUI

struct AddTestView: View {
    @Environment(\.managedObjectContext) var moc
    @Environment(\.dismiss) var dismiss
    
    
    @State private var title = ""
    @State private var organizer = "Work"
    @State private var noteContent = ""
    @State private var image = ""
    @State private var dateAdded = ""
    
    let organizers = ["Work", "School", "Misc"]
    
    @State private var shouldShowHome = false

    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Note Title", text: $title)
                    
                    Picker("Organizer", selection: $organizer) {
                        ForEach(organizers, id: \.self) {
                            Text($0)
                        }
                    }
                }
                
                Section {
                    TextEditor(text: $noteContent)
                } header: {
                    Text("Write your note!")
                }
                
                Section {
                        Button ("Save") {
                            let newNote = Note(context: moc)
                            newNote.id = UUID()
                            newNote.title = title
                            newNote.organizer = organizer
                            newNote.noteContent = noteContent
                            
                            try? moc.save()
                            dismiss()

                        }
                    }
                }
            
                .navigationTitle("Add Note")

            }
            
            }
        }
    


struct AddTestView_Previews: PreviewProvider {
    static var previews: some View {
        AddTestView()
    }
}
