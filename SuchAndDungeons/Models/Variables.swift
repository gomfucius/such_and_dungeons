//
//  Variables.swift
//  SuchAndDungeons
//
//  Created by Genki Mine on 2/13/21.
//

import Foundation
import UIKit

struct Variables {
    
    static var interval: TimeInterval = 0.5
    static let hitThreshold: CGFloat = 50
    
}

struct Identity {
    
    var id: String
    
}

class Minion: Identifiable, Hashable {
    
    var identity = Identity(id: "\(Int.random(in: 0...Int.max))")
    let monster: Monster
    
    init(monster: Monster) {
        self.monster = monster
    }
    
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
