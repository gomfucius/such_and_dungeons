//
//  LevelView.swift
//  SuchAndDungeons
//
//  Created by Genki Mine on 2/6/21.
//

import Foundation
import SwiftUI

struct LevelView: View {
    
    private var backgroundImage = Image("bg_dungeon001")
    
    var body: some View {
        ZStack {
            backgroundImage
                .mask(Rectangle().frame(width: 320, height: 60))
            EnemyView()
            MinionView()
        }
    }
}
