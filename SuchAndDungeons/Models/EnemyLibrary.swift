//
//  EnemyLibrary.swift
//  SuchAndDungeons
//
//  Created by Genki Mine on 2/16/21.
//

import Foundation

class EnemyLibrary {
    
    static let shared = EnemyLibrary()
    var enemies = [Enemy]()
    
    init() {
        populate()
    }
    
    func enemy(with name: String) -> Enemy {
        return enemies.filter({ $0.name == name }).first!.copy() as! Enemy
    }
    
    private func populate() {
        var enemy: Enemy
        
        enemy = Enemy(name: "SomeName", image: "enemy_choma", level: 2, hpMax: 30, mpMax: 10, hp: 30, mp: 10, attackPower: 10, armorClass: 10, strength: 10, stamina: 10, intelligence: 10, agility: 10, xp: 10, gold: 10, startFloor: 1, endFloor: 10, availability: 100, attribute: .none, width: 32, height: 32, offset: .zero, weak: [.none], strong: [.fire], drop: "Medical Herb", dropPercentage: 10, sleepPercentage: 10, skills: [.attack])
        enemies.append(enemy)
    }
}
