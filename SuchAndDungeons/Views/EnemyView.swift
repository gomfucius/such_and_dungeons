//
//  EnemyView.swift
//  SuchAndDungeons
//
//  Created by Genki Mine on 2/7/21.
//

import Foundation
import SwiftUI

struct EnemyView: View {
    
    @StateObject var movableViewModel = MovableViewModel(direction: .left)

    var body: some View {
        Image("enemy_choma")
            .offset(x: movableViewModel.offset.x, y: movableViewModel.offset.y)
            .animation(.linear)
            .onAppear {
                movableViewModel.onAppear()
            }
    }
}
