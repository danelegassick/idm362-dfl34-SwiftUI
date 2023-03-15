//
//  HomeView.swift
//  Note Taking
//
//  Created by dane legassick on 3/1/23.
//

import SwiftUI

struct HomeView: View{
    @EnvironmentObject var notesVM: NotesViewModel
    @FetchRequest(sortDescriptors: []) var notes: FetchedResults<Note>
    
    @Environment(\.managedObjectContext) var moc
    
    var body: some View {
        
        
        ScrollView {
            VStack {
                HStack {
                    Text("\(notes.count) \(notes.count > 1 ? "Notes" : "Note")")
                        .font(.headline)
                        .fontWeight(.bold)
                        .opacity(0.7)
                    
                    Spacer()
                }
                
                LazyVGrid(columns: [GridItem(.adaptive(minimum:160), spacing: 15)], spacing: 15) {
                    ForEach(notes, id: \.self) { note in
                        VStack {
                            AsyncImage(url: URL(string: note.image ?? "https://www.incimages.com/uploaded_files/image/1920x1080/getty_655998316_2000149920009280219_363765.jpg")) { image in
                                image
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .overlay(alignment: .bottom) {
                                        Text(note.title ?? "Unknown name")
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
                .padding(.top)
                
            }
            .padding(.horizontal)
            
        }
        
    }
}
        
        
        
        
        
//        ScrollView {
//            ForEach(notes, id: \.self) { note in
////                Text(note.title ?? "Unknown name")
//                //                Text("\(note.age) years old")
//                VStack {
//                    AsyncImage(url: URL(string: note.image ?? "https://www.incimages.com/uploaded_files/image/1920x1080/getty_655998316_2000149920009280219_363765.jpg")) { image in
//                        image
//                            .resizable()
//                            .aspectRatio(contentMode: .fill)
//                            .overlay(alignment: .bottom) {
//                                Text(note.title ?? "Unknown name")
//                                    .font(.headline)
//                                    .fontWeight(.bold)
//                                    .foregroundColor(.white)
//                                    .frame(maxWidth: 136)
//                                    .padding()
//                                    .shadow(color:.black, radius: 3, x:0, y:0)
//                            }
//                    } placeholder: {
//                        Image(systemName: "photo")
//                            .resizable()
//                            .scaledToFit()
//                            .frame (width: 40, height: 40, alignment: .center)
//                            .foregroundColor(.white.opacity(0.7))
//                            .frame(maxWidth: .infinity, maxHeight: .infinity)
//
//                    }
//                }
//                .frame (width: 160, height: 217, alignment: .top)
//                .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
//                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
//                .shadow(color: Color.black.opacity(0.3), radius: 15, x: 0, y: 10)
//            }
//        }
//    }
//}
    
    
struct HomeView_Previews: PreviewProvider{
        static var previews: some View {
            HomeView()
                .environmentObject(NotesViewModel())
        }
    }

