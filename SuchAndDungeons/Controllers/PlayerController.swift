//
//  PlayerController.swift
//  SuchAndDungeons
//
//  Created by Genki Mine on 2/16/21.
//

import Foundation

class PlayerController: ObservableObject {
    
    @Published private(set) var gold: Int = 0
    
    func addGold(_ gold: Int) {
        self.gold += gold
    }
    
}
