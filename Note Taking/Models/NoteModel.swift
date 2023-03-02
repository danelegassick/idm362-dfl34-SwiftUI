//
//  Organizers.swift
//  Note Taking
//
//  Created by dane legassick on 3/1/23.
//

import Foundation

enum Organizer: String, CaseIterable, Identifiable {
    var id: String {self.rawValue}
    case school = "School"
    case work = "Work"
    case misc = "Misc"
}

struct NoteModel: Identifiable {
    let id = UUID()
    let title: String
    let noteContent: String
    let organizer: Organizer.RawValue
    let image: String
    let dateAdded: String

}

extension NoteModel {
    static let all: [NoteModel] = [
        NoteModel(
            title: "Note 1",
            noteContent: "This is the content of Note 1",
            organizer: "School",
            image: "https://www.incimages.com/uploaded_files/image/1920x1080/getty_655998316_2000149920009280219_363765.jpg",
            dateAdded: "03/02"
        ),
        NoteModel(
            title: "Note 2",
            noteContent: "This is the content of Note 2",
            organizer: "Work",
            image: "https://api.time.com/wp-content/uploads/2021/02/laptop-home-office.jpg",
            dateAdded: "03/02"
        ),
        NoteModel(
            title: "Note 3",
            noteContent: "This is the content of Note 3",
            organizer: "Misc",
            image: "https://cdn.pixabay.com/photo/2016/03/27/23/11/post-it-notes-1284667__340.jpg",
            dateAdded: "03/02"
        )
    ]
}
