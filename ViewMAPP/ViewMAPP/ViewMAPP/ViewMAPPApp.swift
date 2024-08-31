//
//  ViewMAPPApp.swift
//  ViewMAPP
//
//  Created by Raul Galindo Hernandez on 29/08/24.
//

import SwiftUI
import SwiftData
import ComposableArchitecture

@main
struct ViewMAPPApp: App {
    private static let store = Store(initialState: MapListReducer.State(), reducer: {
        MapListReducer()
    })
    
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("\(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView(store: ViewMAPPApp.store)
        }
        .modelContainer(for: [CitiLocation.self, Coordinates.self])
    }
}
