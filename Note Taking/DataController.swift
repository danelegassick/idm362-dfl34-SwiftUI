//
//  DataController.swift
//  Note Taking
//
//  Created by dane legassick on 3/15/23.
//

import CoreData
import Foundation

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "DataModel")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print ("Core Data failed to load:\(error.localizedDescription)")
            }
        }
    }
}
