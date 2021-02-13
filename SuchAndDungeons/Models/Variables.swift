//
//  Variables.swift
//  SuchAndDungeons
//
//  Created by Genki Mine on 2/13/21.
//

import Foundation
import UIKit

struct Variables {
    
    static var interval: TimeInterval = 1
    static let hitThreshold: CGFloat = 50
    
}

class Floor {
    
    @Published var minions = [Minion]()
    @Published var enemies = [Enemy]()
    
    func addMinion() {
        minions.append(Minion())
    }
    
    func addEnemy() {
        enemies.append(Enemy())
    }
}

struct Identity {
    
    var id: String
    var hp: Int = 10
    var hpMax: Int = 10
    
}

class Minion: Identifiable, Hashable {
    
    var identity = Identity(id: "\(Int.random(in: 0...Int.max))")
    
    static func == (lhs: Minion, rhs: Minion) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
}

class Enemy: Identifiable, Hashable {
    
    var identity = Identity(id: "\(Int.random(in: 0...Int.max))")
    
    static func == (lhs: Enemy, rhs: Enemy) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
