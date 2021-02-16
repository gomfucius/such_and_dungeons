//
//  Monster.swift
//  SuchAndDungeons
//
//  Created by Genki Mine on 2/16/21.
//

import Foundation

class Monster: SuchUnit, NSCopying {
    
    func copy(with zone: NSZone? = nil) -> Any {
        let copy = Monster(name: name, image: image, level: level, hpMax: hpMax, mpMax: mpMax, hp: hp, mp: mp, attackPower: attackPower, armorClass: armorClass, strength: strength, stamina: stamina, intelligence: intelligence, agility: agility, xp: xp, gold: gold, startFloor: startFloor, endFloor: endFloor, availability: availability, attribute: attribute, width: width, height: height, offset: offset, weak: weak, strong: strong, drop: drop, dropPercentage: dropPercentage, sleepPercentage: sleepPercentage, skills: skills)
        return copy
    }
    
}
