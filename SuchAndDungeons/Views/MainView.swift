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
            MenuView()
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

struct MenuView: View {
    
    @EnvironmentObject var app: AppController
    
    enum MenuType {
        case minions, items
    }
    
    @State private var isShowingModal = false
    @State private var menuType: MenuType = .minions

    var body: some View {
        HStack {
            MenuItem(title: "Minions")
                .onTapGesture {
                    menuType = .minions
                    isShowingModal = true
                    app.moveable.pause()
                }
            MenuItem(title: "Items")
                .onTapGesture {
                    menuType = .items
                    isShowingModal = true
                    app.moveable.pause()
                }
        }
        .sheet(isPresented: $isShowingModal, onDismiss: { app.moveable.unpause() }) {
            if menuType == .minions {
                Text("Minions")
            } else {
                Text("Items")
            }
        }
        .frame(maxWidth: .infinity, maxHeight: 44)
    }
}

struct MenuItem: View {
    
    var title: String
    
    var body: some View {
        ZStack {
            Rectangle().foregroundColor(.gray)
            Text(title)
        }
    }
}
