//
//  ContentView.swift
//  Note Taking
//
//  Created by dane legassick on 3/1/23.
//
import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var notes: FetchedResults<Note>
    
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


