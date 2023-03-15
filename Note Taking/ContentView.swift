//
//  ContentView.swift
//  Note Taking
//
//  Created by dane legassick on 3/1/23.
//
import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: [
        SortDescriptor(\.organizer, order: .reverse)
    ]) var notes: FetchedResults<Note>
    
    @State private var showingAddScreen = false

    
    var body: some View {
        NavigationView {
            List {
                ForEach(notes) { note in
                    NavigationLink {
                        TestDetailView(note: note)
                    } label: {
                        HStack {
                            TestOrganizerView(organizer: note.organizer ?? "Misc")
                                .font(.largeTitle)
                            
                            VStack(alignment: .leading) {
                                Text(note.title ?? "Unknown Title")
                                    .font(.headline)
                            }
                        }
                    }
                }
            }
                .navigationTitle("Notate")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            showingAddScreen.toggle()
                        } label: {
                            Label("Add Note", systemImage: "plus")
                        }
                    }
                }
                .sheet(isPresented: $showingAddScreen) {
                    AddTestView()
                }
        }
// ++++++++++ This is the current design beneath ++++++++++++++++++++++++
//        TabBar()
    }
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(NotesViewModel())
    }
}


