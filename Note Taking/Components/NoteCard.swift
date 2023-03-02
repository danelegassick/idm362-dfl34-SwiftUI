//
//  NoteCard.swift
//  Note Taking
//
//  Created by dane legassick on 3/1/23.
//

import SwiftUI

struct NoteCard: View {
    var notemodel: NoteModel
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: notemodel.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .overlay(alignment: .bottom) {
                        Text(notemodel.title)
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(maxWidth: 136)
                            .padding()
                            .shadow(color:.black, radius: 3, x:0, y:0)
                    }
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame (width: 40, height: 40, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)

            }
        }
        .frame (width: 160, height: 217, alignment: .top)
        .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: Color.black.opacity(0.3), radius: 15, x: 0, y: 10)
    }
}

struct NoteCard_Previews: PreviewProvider {
    static var previews: some View {
        NoteCard(notemodel: NoteModel.all[0])
    }
}
