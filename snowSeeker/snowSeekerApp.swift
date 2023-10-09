//
//  snowSeekerApp.swift
//  snowSeeker
//
//  Created by Z on 09/10/2023.
//

import SwiftUI

@main
struct snowSeekerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
