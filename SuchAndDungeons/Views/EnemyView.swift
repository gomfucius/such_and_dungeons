//
//  EnemyView.swift
//  SuchAndDungeons
//
//  Created by Genki Mine on 2/7/21.
//

import Foundation
import SwiftUI

struct EnemyView: View {
    
    @EnvironmentObject var app: AppController
    @StateObject var movableViewModel = MovableViewModel(direction: .left)
    var identity: Identity

    var body: some View {
        Image("enemy_choma")
            .offset(x: movableViewModel.offset.x, y: movableViewModel.offset.y)
            .animation(.linear)
            .onAppear {
                movableViewModel.app = app
                movableViewModel.onAppear(identity: identity)
            }
    }
}
