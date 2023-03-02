//
//  OrganizerView.swift
//  Note Taking
//
//  Created by dane legassick on 3/1/23.
//

import SwiftUI

struct OrganizersView: View {
    var body: some View {
        NavigationView{
            List {
                ForEach(Organizer.allCases) { organizer in
                    NavigationLink {
                        OrganizerView(organizer: organizer)
                    } label: {
                        Text(organizer.rawValue)
                    }
                }
            }
            .navigationTitle("Organizers")
        }
        .navigationViewStyle(.stack)
    }
}

struct OrganizersView_Previews: PreviewProvider {
    static var previews: some View {
        OrganizersView()
    }
}
