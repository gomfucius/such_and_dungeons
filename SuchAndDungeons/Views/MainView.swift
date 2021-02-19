//
//  Main.swift
//  SuchAndDungeons
//
//  Created by Genki Mine on 2/6/21.
//

import Foundation
import SwiftUI

struct MainView: View {

    @EnvironmentObject var app: AppController
    
    var body: some View {
        VStack {
            HeaderView()
            ForEach(Array(app.game.floors), id: \.key) { key, value in
                LevelView().frame(width: 320, height: 60)
            }
            
            Button("Add Minion") {
                app.game.addMinion(floorNumber: 0)
            }
            
            Button("Add Enemy") {
                app.game.addEnemy(floorNumber: 0)
            }
            
            Button("Change Speed") {
                Variables.updateInterval()
            }
            Spacer()
        }
    }
}

struct HeaderView: View {

    @EnvironmentObject var app: AppController

    var body: some View {
        HStack {
            Text("1F-5F")
            Spacer()
            Text("💰 \(app.player.gold)")
        }
        .foregroundColor(.white)
        .padding()
    }
}
