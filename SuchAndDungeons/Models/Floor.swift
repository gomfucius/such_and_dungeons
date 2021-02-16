//
//  Floor.swift
//  SuchAndDungeons
//
//  Created by Genki Mine on 2/13/21.
//

import Combine
import Foundation

class Floor {
    
    @Published var minions = [Minion]()
    @Published var enemies = [Enemy]()
    
    func addMinion(floorNumber: Int) {
        minions.append(MinionLibrary.shared.minion(with: "Maneater"))
    }
    
    func addEnemy(floorNumber: Int) {
        enemies.append(EnemyLibrary.shared.enemy(with: "SomeName"))
    }
}
