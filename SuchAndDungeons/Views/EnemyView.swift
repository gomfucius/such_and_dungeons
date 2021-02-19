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
    var enemy: Enemy

    var body: some View {
        Text("🧙‍♂️")
            .font(.title)
            .offset(x: movableViewModel.offset.x, y: movableViewModel.offset.y)
            .animation(.linear)
            .onAppear {
                movableViewModel.app = app
                movableViewModel.onAppear(enemy: enemy)
            }
    }
}
