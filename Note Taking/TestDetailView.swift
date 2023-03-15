//
//  TestDetailView.swift
//  Note Taking
//
//  Created by dane legassick on 3/15/23.
//

import SwiftUI

struct TestDetailView: View {
    let note: Note
    var body: some View {
        ScrollView {
            ZStack(alignment: .bottomTrailing) {
                Image(note.organizer ?? "Misc")
                    .resizable()
                    .scaledToFit()
                
                Text(note.organizer?.uppercased() ?? "MISC")
                    .font(.caption)
                    .fontWeight(.black)
                    .padding(8)
                    .foregroundColor(.white)
                    .background(.black.opacity(0.75))
                    .clipShape(Capsule())
                    .offset(x: -5, y: -5)
            }
            Text(note.title ?? "Unknown Note Title")
                .font(.title)
                .fontWeight(.bold)
            Text(note.noteContent ?? "unknown note content")
                .padding()
        }
        .navigationTitle(note.title ?? "Unknown Note")
        .navigationBarTitleDisplayMode(.inline)
    }
}


