//
//  SuchAndDungeonsApp.swift
//  SuchAndDungeons
//
//  Created by Genki Mine on 1/30/21.
//

import SwiftUI

@main
struct SuchAndDungeonsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
