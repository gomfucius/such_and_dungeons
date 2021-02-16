//
//  Unit.swift
//  SuchAndDungeons
//
//  Created by Genki Mine on 2/13/21.
//

import UIKit

class SuchUnit {
    
    private(set) var name: String
    private(set) var image: String
    private(set) var level: Int
    private(set) var hpMax: Int
    private(set) var mpMax: Int
    private(set) var hp: Int
    private(set) var mp: Int
    private(set) var attackPower: Int
    private(set) var armorClass: Int
    
    private(set) var strength: Int
    private(set) var stamina: Int
    private(set) var intelligence: Int
    private(set) var agility: Int
    
    private(set) var xp: Int
    private(set) var gold: Int
    
    private(set) var startFloor: Int
    private(set) var endFloor: Int
    private(set) var availability: Int
    private(set) var attribute: Attribute
    
    private(set) var width: CGFloat
    private(set) var height: CGFloat
    private(set) var offset: CGPoint
    
    private(set) var weak: [Element]
    private(set) var strong: [Element]
    
    private(set) var drop: String
    private(set) var dropPercentage: Int
    private(set) var sleepPercentage: Int
    private(set) var skills: [Skill]
    
    init(name: String, image: String, level: Int, hpMax: Int, mpMax: Int, hp: Int, mp: Int, attackPower: Int, armorClass: Int, strength: Int, stamina: Int, intelligence: Int, agility: Int, xp: Int, gold: Int, startFloor: Int, endFloor: Int, availability: Int, attribute: Attribute, width: CGFloat, height: CGFloat, offset: CGPoint, weak: [Element], strong: [Element], drop: String, dropPercentage: Int, sleepPercentage: Int, skills: [Skill]) {
        self.name = name
        self.image = image
        self.level = level
        self.hpMax = hpMax
        self.mpMax = mpMax
        self.hp = hp
        self.mp = mp
        self.attackPower = attackPower
        self.armorClass = armorClass
        self.strength = strength
        self.stamina = stamina
        self.intelligence = intelligence
        self.agility = agility
        self.xp = xp
        self.gold = gold
        self.startFloor = startFloor
        self.endFloor = endFloor
        self.availability = availability
        self.attribute = attribute
        self.width = width
        self.height = height
        self.offset = offset
        self.weak = weak
        self.strong = strong
        self.drop = drop
        self.dropPercentage = dropPercentage
        self.sleepPercentage = sleepPercentage
        self.skills = skills
    }
    
}

extension SuchUnit {
    
    var isDead: Bool {
        hp <= 0
    }
    
    func damage(_ damage: Int) {
        hp -= damage
        if hp < 0 {
            hp = 0
        }
    }
    
}
