//
//  TestView.swift
//  Note Taking
//
//  Created by dane legassick on 3/15/23.
//

import SwiftUI

struct TestView: View {
    var notemodel: NoteModel
    
    var body: some View {
        ScrollView {
            AsyncImage(url: URL(string: notemodel.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame (width: 100, height: 100, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .frame(height: 300)
            .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
            
            VStack(spacing:30) {
                Text(notemodel.title)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                VStack(alignment: .leading, spacing: 30) {
                    if !notemodel.noteContent.isEmpty {
                        Text(notemodel.noteContent)
                            .frame(width: 300, alignment: .center)
                    }
                }
                
            }
        }
        .ignoresSafeArea(.container, edges: .top)
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        NoteView(notemodel: NoteModel.all[0])
    }
}
