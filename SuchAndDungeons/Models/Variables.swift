//
//  Variables.swift
//  SuchAndDungeons
//
//  Created by Genki Mine on 2/13/21.
//

import Foundation
import UIKit

struct Variables {
    
    static private(set) var interval: TimeInterval = 1
    static let hitThreshold: CGFloat = 50
    static let backgroundWidth: CGFloat = 310
    static let backgroundHeight: CGFloat = 60
    static let offscreenEdge: CGFloat = 200

    static func updateInterval() {
        Self.interval = Variables.interval == 1 ? 0.5 : 1
        NotificationCenter.default.post(name: Notification.intervalDidChange, object: nil)
    }
    
}

struct Identity {
    
    var id: String
    
}

class Minion: SuchUnit, Identifiable, Hashable, NSCopying {
        
    static func == (lhs: Minion, rhs: Minion) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        let copy = Minion(name: name, image: image, level: level, hpMax: hpMax, mpMax: mpMax, hp: hp, mp: mp, attackPower: attackPower, armorClass: armorClass, strength: strength, stamina: stamina, intelligence: intelligence, agility: agility, xp: xp, gold: gold, startFloor: startFloor, endFloor: endFloor, availability: availability, attribute: attribute, width: width, height: height, offset: offset, weak: weak, strong: strong, drop: drop, dropPercentage: dropPercentage, sleepPercentage: sleepPercentage, skills: skills)
        return copy
    }
}

class Enemy: SuchUnit, Identifiable, Hashable, NSCopying {
        
    static func == (lhs: Enemy, rhs: Enemy) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        let copy = Enemy(name: name, image: image, level: level, hpMax: hpMax, mpMax: mpMax, hp: hp, mp: mp, attackPower: attackPower, armorClass: armorClass, strength: strength, stamina: stamina, intelligence: intelligence, agility: agility, xp: xp, gold: gold, startFloor: startFloor, endFloor: endFloor, availability: availability, attribute: attribute, width: width, height: height, offset: offset, weak: weak, strong: strong, drop: drop, dropPercentage: dropPercentage, sleepPercentage: sleepPercentage, skills: skills)
        return copy
    }
}
