//
//  Monster.swift
//  SuchAndDungeons
//
//  Created by Genki Mine on 2/13/21.
//

import UIKit

struct Monster {
    
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
    
}
