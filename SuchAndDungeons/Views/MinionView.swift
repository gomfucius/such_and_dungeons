//
//  MinionView.swift
//  SuchAndDungeons
//
//  Created by Genki Mine on 2/6/21.
//

import Combine
import Foundation
import SwiftUI

struct MinionView: View {
    
    @EnvironmentObject var app: AppController
    @StateObject var movableViewModel = MovableViewModel(direction: .right)
    var minion: Minion
    
    var body: some View {
        VStack {
            Image(movableViewModel.minion?.monster.image ?? "enemy_goo")
                .scaleEffect(0.5)
                .offset(x: movableViewModel.offset.x, y: movableViewModel.offset.y)
                .animation(.linear)
                .onAppear {
                    movableViewModel.app = app
                    movableViewModel.onAppear(minion: minion)
                }
        }
    }
}
