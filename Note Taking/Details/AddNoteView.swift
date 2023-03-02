//
//  AddNoteView.swift
//  Note Taking
//
//  Created by dane legassick on 3/1/23.
//

import SwiftUI

struct AddNoteView: View {
    @EnvironmentObject var notesVM: NotesViewModel
    
    @State private var title: String = ""
    @State private var selectedOrganizer: Organizer = Organizer.misc
    @State private var noteContent: String = ""
    @State private var navigateToNote : Bool = false

    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack{
            Form {
                Section(header: Text("Title")) {
                    TextField("Note Title", text: $title)
                }

                Section(header: Text("Organizer")) {
                    Picker("Organizer", selection: $selectedOrganizer) {
                        ForEach(Organizer.allCases) { organizer in
                            Text(organizer.rawValue)
                                .tag(organizer)
                        }
                    }
                    .pickerStyle(.menu)
                }

                Section(header: Text("Content")) {
                    TextEditor(text: $noteContent)
                }
            }
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Label("Cancel", systemImage: "xmark")
                            .labelStyle(.iconOnly)
                    }
                }

                ToolbarItem {
                         VStack {
                            Button {
                                saveNote()
                                navigateToNote = true
                            } label: {
                                Label("Done", systemImage: "checkmark")
                                    .labelStyle(.iconOnly)
                            }
                        }
                         .navigationDestination(isPresented: $navigateToNote) {
                             NoteView(notemodel: notesVM.notemodels.sorted{ $0.dateAdded > $1.dateAdded }[0])
                                 .navigationBarBackButtonHidden(true)
                    }
                    .disabled(title.isEmpty)
                }
            })
            .navigationTitle("New Note")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
    }
}

struct AddNoteView_Previews: PreviewProvider {
    static var previews: some View {
        AddNoteView()
            .environmentObject(NotesViewModel())
    }
}

extension AddNoteView {
    private func saveNote() {
        let now = Date()
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-mm-dd"
        
        let dateAdded = dateFormatter.string(from: now)
        print(dateAdded)
        
        var imageLink = ""
        
        if selectedOrganizer.rawValue == "Misc" {
            imageLink = "https://cdn.pixabay.com/photo/2016/03/27/23/11/post-it-notes-1284667__340.jpg"
            print(imageLink)
        } else if selectedOrganizer.rawValue == "Work" {
            imageLink = "https://api.time.com/wp-content/uploads/2021/02/laptop-home-office.jpg"
            print(imageLink)
        } else {
            imageLink = "https://www.incimages.com/uploaded_files/image/1920x1080/getty_655998316_2000149920009280219_363765.jpg"
            print(imageLink)
        }
        
        let notemodel = NoteModel(title: title, noteContent: noteContent, organizer: selectedOrganizer.rawValue, image: imageLink, dateAdded: dateAdded)
        
        notesVM.addNote(notemodel: notemodel)
    }
}
