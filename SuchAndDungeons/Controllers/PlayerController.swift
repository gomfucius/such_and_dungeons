//
//  PlayerController.swift
//  SuchAndDungeons
//
//  Created by Genki Mine on 2/16/21.
//

import Foundation

class PlayerController: ObservableObject {
    
    @Published private(set) var gold: Int = 0
    @Published private(set) var hp: Int = 3
    @Published private(set) var hpMax: Int = 3

    func addGold(_ gold: Int) {
        self.gold += gold
    }
    
    func addHP(_ hp: Int) {
        self.hp += hp
        if self.hp <= 0 {
            self.hp = 0
        }
    }
    
}
