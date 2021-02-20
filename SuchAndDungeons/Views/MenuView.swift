//
//  MenuView.swift
//  SuchAndDungeons
//
//  Created by Genki Mine on 2/20/21.
//

import Foundation
import SwiftUI

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
        .frame(maxWidth: .infinity, maxHeight: 44)
        .sheet(isPresented: $isShowingModal, onDismiss: { app.moveable.unpause() }) {
            if menuType == .minions {
                Text("Minions")
            } else {
                Text("Items")
            }
        }
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
