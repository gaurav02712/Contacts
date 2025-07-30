//
//  ContactsApp.swift
//  Contacts
//
//  Created by Gaurav Pandey on 30/07/25.
//

import SwiftUI

@main
struct ContactsApp: App {
    @State private var showSplash = true
    
    var body: some Scene {
        WindowGroup {
            if showSplash {
                SplashScreenView(isActive: $showSplash, dismissMode: .auto(seconds: 2.0))
            } else {
                ContentView()
            }
        }
    }
}
