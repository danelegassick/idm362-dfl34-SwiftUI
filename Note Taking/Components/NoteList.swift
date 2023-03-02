//
//  NoteList.swift
//  Note Taking
//
//  Created by dane legassick on 3/1/23.
//

import SwiftUI

struct NoteList: View {
    var notemodels : [NoteModel]
    
    var body: some View {
        VStack {
            HStack {
                Text("\(notemodels.count) \(notemodels.count > 1 ? "Notes" : "Note")")
                    .font(.headline)
                    .fontWeight(.bold)
                    .opacity(0.7)
                
                Spacer()
            }
            
            LazyVGrid(columns: [GridItem(.adaptive(minimum:160), spacing: 15)], spacing: 15) {
                ForEach(notemodels) { notemodel in
                    NavigationLink(destination: NoteView(notemodel: notemodel)){
                        NoteCard(notemodel: notemodel)
                    }
                }
            }
            .padding(.top)
        }
        .padding(.horizontal)
    }
}

struct NoteList_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            NoteList(notemodels: NoteModel.all)
        }
    }
}
