//
//  SettingsView.swift
//  Note Taking
//
//  Created by dane legassick on 3/1/23.
//

import SwiftUI

struct SettingsView: View{
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    @State var notificationsEnabled = true
    @State var darkModeEnabled = false
    @AppStorage("selectedLanguage") private var selectedLanguage = "English"

    var body: some View {
        NavigationView {
            VStack {
                Picker("Mode", selection: $isDarkMode) {
                    Text("Light")
                        .tag(false)
                    Text("Dark")
                        .tag(true)
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                Spacer()
                Form {
                    Section(header: Text("General")) {
                        Toggle(isOn: $notificationsEnabled) {
                            Text("Notifications")
                        }
                        .tint(.accentColor)

                    }
                    Section(header: Text("Language")) {
                        Picker(selection: $selectedLanguage, label: Text("Select language")) {
                            Text("English").tag("English")
                            Text("Spanish").tag("Spanish")
                            Text("French").tag("French")
                        }
                    }

                }
            }.navigationTitle("Settings")
            
        }

        
        
//        NavigationView {
//            Form {
//                Section(header:Text("Display"),
//                        footer: Text("System settings will override Dark mode and use the current device theme")) {
//                    Toggle(isOn: .constant(true),
//                           label: {
//                        Text("Dark Mode")
//                    })
//
//                    Toggle(isOn: .constant(true),
//                           label: {
//                        Text("Use System Settings")
//                    })
//                }
//            }
//        }
        
    }
}


struct SettingsView_Previews: PreviewProvider{
    static var previews: some View {
        SettingsView()
    }
}
