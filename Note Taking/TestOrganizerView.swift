//
//  TestOrganizerView.swift
//  Note Taking
//
//  Created by dane legassick on 3/15/23.
//

import SwiftUI

struct TestOrganizerView: View {
    
    let organizer: String

    
    var body: some View {
        
        switch organizer {
        case "Work":
            return Text("💼")
        case "School":
            return Text("📚")
        case "Misc":
            return Text("❓")
        default:
            return Text("❓")
            
        }
    }
}

struct TestOrganizerView_Previews: PreviewProvider {
    static var previews: some View {
        TestOrganizerView(organizer: "Misc")
    }
}
