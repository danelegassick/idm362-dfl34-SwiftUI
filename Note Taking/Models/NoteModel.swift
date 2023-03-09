//
//  Organizers.swift
//  Note Taking
//
//  Created by dane legassick on 3/1/23.
//

import Foundation
import CoreData

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

//enum Organizer: String, CaseIterable, Identifiable {
//var id: String {self.rawValue}
//case school = "School"
//case work = "Work"
//case misc = "Misc"
//}
//
//class Note: NSManagedObject {
//@NSManaged var id: UUID
//@NSManaged var title: String
//@NSManaged var noteContent: String
//@NSManaged var organizer: String
//@NSManaged var image: String
//@NSManaged var dateAdded: String
//}
//
//struct NoteModel: Identifiable {
//    let id = UUID()
//    let title: String
//    let noteContent: String
//    let organizer: Organizer.RawValue
//    let image: String
//    let dateAdded: String
//
//}
//
//extension NoteModel {
//    static let all: [NoteModel] = [
//        NoteModel(
//            title: "Note 1",
//            noteContent: "This is the content of Note 1",
//            organizer: "School",
//            image: "https://www.incimages.com/uploaded_files/image/1920x1080/getty_655998316_2000149920009280219_363765.jpg",
//            dateAdded: "03/02"
//        )
//    ]
//}
//
//extension NoteModel {
//    var managedObject: Note {
//        let note = Note()
//        note.id = UUID()
//        note.title = title
//        note.noteContent = noteContent
//        note.organizer = organizer
//        note.image = image
//        note.dateAdded = dateAdded
//        return note
//}
//}
//
//class CoreDataHelper {
//    static let shared = CoreDataHelper()
//}
//
//var persistentContainer: NSPersistentContainer = {
//    let container = NSPersistentContainer(name: "MyDataModel")
//    container.loadPersistentStores(completionHandler: { (storeDescription, error) in
//        if let error = error as NSError? {
//            fatalError("Unresolved error \(error), \(error.userInfo)")
//        }
//    })
//    return container
//}()
//
//func saveNoteModels(noteModels: [NoteModel]) {
//    let context = persistentContainer.viewContext
//
//    for noteModel in noteModels {
//        let note = noteModel.managedObject
//        context.insert(note)
//    }
//
//    do {
//        try context.save()
//    } catch {
//        print("Failed to save note models to Core Data: \(error)")
//    }
//}
//
//func loadNoteModels() -> [NoteModel] {
//    let context = persistentContainer.viewContext
//    let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Note")
//    var notes: [Note] = []
//
//    do {
//        notes = try context.fetch(fetchRequest) as! [Note]
//    } catch {
//        print("Failed to load note models from Core Data: \(error)")
//    }
//
//    return notes.map { note in
//        return NoteModel(
//            id: note.id,
//            title: note.title,
//            noteContent: note.noteContent,
//            organizer: note.organizer,
//            image: note.image,
//            dateAdded: note.dateAdded
//
//        )}
//}
