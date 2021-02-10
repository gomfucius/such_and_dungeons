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
    let app = AppController()

    var body: some Scene {
        WindowGroup {
            ZStack {
                Color.black.edgesIgnoringSafeArea(.all)
                MainView()
                    .environmentObject(app)
            }
        }
    }
}
