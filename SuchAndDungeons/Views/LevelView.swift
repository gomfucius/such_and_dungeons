//
//  LevelView.swift
//  SuchAndDungeons
//
//  Created by Genki Mine on 2/6/21.
//

import Foundation
import SwiftUI

struct LevelView: View {
    
    @EnvironmentObject var app: AppController
        
    var body: some View {
        ZStack {
            Image("bg_dungeon001")
                .mask(Rectangle().frame(width: 320, height: 60))
            ForEach(Array(app.game.floors), id: \.key) { key, floor in
                ForEach(floor.minions, id: \.self) { minion in
                    MinionView(minion: minion)
                }
                ForEach(floor.enemies, id: \.self) { enemy in
                    EnemyView(identity: enemy.identity)
                }
            }
        }
    }
}
