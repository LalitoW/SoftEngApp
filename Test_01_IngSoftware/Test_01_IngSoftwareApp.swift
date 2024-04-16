//
//  Test_01_IngSoftwareApp.swift
//  Test_01_IngSoftware
//
//  Created by iOS Lab on 16/04/24.
//

import SwiftUI
import SwiftData

@main
struct Test_01_IngSoftwareApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
