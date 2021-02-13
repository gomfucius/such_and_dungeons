//
//  MonsterLibrary.swift
//  SuchAndDungeons
//
//  Created by Genki Mine on 2/13/21.
//

import UIKit

class MonsterLibrary {
    
    var monsters = [Monster]()
    
    init() {
        populate()
    }
    
    func populate() {
        var monster: Monster

        monster = Monster(name: "Goo", image: "enemy_goo", level: 1, hpMax: 3, mpMax: 0, hp: 3, mp: 1, attackPower: 1, armorClass: 1, strength: 5, stamina: 6, intelligence: 4, agility: 5, xp: 1, gold: 0, startFloor: 1, endFloor: 9, availability: 100, attribute: .none, width: 32, height: 32, offset: CGPoint(x: 0, y: 0), weak: [.ice, .fire, .lightning], strong: [.none], drop: "Gooey Blob", dropPercentage: 20, sleepPercentage: 10, skills: [.attack, .attack, .rushcharge, .daydream])
        monsters.append(monster)

        monster = Monster(name: "Wild Boar", image: "enemy_wild_boar", level: 1, hpMax: 5, mpMax: 0, hp: 5, mp: 2, attackPower: 2, armorClass: 2, strength: 5, stamina: 7, intelligence: 4, agility: 5, xp: 2, gold: 0, startFloor: 2, endFloor: 9, availability: 80, attribute: .none, width: 64, height: 64, offset: CGPoint(x: 0, y: 0), weak: [.none], strong: [.fire], drop: "Beast Skin", dropPercentage: 20, sleepPercentage: 5, skills: [.attack, .attack, .rushcharge])
        monsters.append(monster)

        monster = Monster(name: "Maneater", image: "enemy_maneater", level: 2, hpMax: 6, mpMax: 0, hp: 6, mp: 3, attackPower: 3, armorClass: 2, strength: 7, stamina: 12, intelligence: 4, agility: 5, xp: 4, gold: 0, startFloor: 2, endFloor: 9, availability: 100, attribute: .poison, width: 64, height: 64, offset: CGPoint(x: 0, y: 0), weak: [.fire], strong: [.none], drop: "Antidote", dropPercentage: 3, sleepPercentage: 5, skills: [.attack, .attack, .bite, .acidspit])
        monsters.append(monster)

        monster = Monster(name: "Vulture", image: "enemy_vulture", level: 3, hpMax: 7, mpMax: 0, hp: 7, mp: 5, attackPower: 5, armorClass: 3, strength: 7, stamina: 7, intelligence: 6, agility: 7, xp: 3, gold: 0, startFloor: 3, endFloor: 9, availability: 100, attribute: .none, width: 128, height: 128, offset: CGPoint(x: -15, y: -10), weak: [.none], strong: [.none], drop: "Medical Herb", dropPercentage: 3, sleepPercentage: 1, skills: [.attack, .attack, .nailslash])
        monsters.append(monster)

        monster = Monster(name: "Bear", image: "enemy_bear", level: 4, hpMax: 9, mpMax: 0, hp: 9, mp: 7, attackPower: 7, armorClass: 4, strength: 9, stamina: 8, intelligence: 5, agility: 7, xp: 7, gold: 0, startFloor: 4, endFloor: 9, availability: 100, attribute: .none, width: 64, height: 128, offset: CGPoint(x: 0, y: 10), weak: [.ice], strong: [.none], drop: "Beast Skin", dropPercentage: 10, sleepPercentage: 5, skills: [.attack, .attack, .bite, .nailslash, .observe])
        monsters.append(monster)

        monster = Monster(name: "Crab", image: "enemy_crab", level: 5, hpMax: 9, mpMax: 0, hp: 9, mp: 6, attackPower: 6, armorClass: 12, strength: 9, stamina: 12, intelligence: 4, agility: 8, xp: 8, gold: 0, startFloor: 5, endFloor: 9, availability: 100, attribute: .none, width: 64, height: 64, offset: CGPoint(x: 0, y: 0), weak: [.ice], strong: [.none], drop: "Pot Lid", dropPercentage: 3, sleepPercentage: 2, skills: [.attack, .nailslash])
        monsters.append(monster)

        monster = Monster(name: "Bandit", image: "enemy_bandit", level: 6, hpMax: 12, mpMax: 10, hp: 12, mp: 7, attackPower: 7, armorClass: 6, strength: 12, stamina: 9, intelligence: 14, agility: 11, xp: 9, gold: 8, startFloor: 6, endFloor: 9, availability: 100, attribute: .none, width: 64, height: 128, offset: CGPoint(x: 0, y: -10), weak: [.none], strong: [.ice], drop: "Dagger", dropPercentage: 6, sleepPercentage: 1, skills: [.attack, .slash, .magicfire, .magicslow, .swiftfoot, .observe])
        monsters.append(monster)

        monster = Monster(name: "Alex", image: "enemy_named_alex", level: 6, hpMax: 20, mpMax: 10, hp: 20, mp: 10, attackPower: 10, armorClass: 7, strength: 13, stamina: 11, intelligence: 14, agility: 15, xp: 15, gold: 16, startFloor: 6, endFloor: 9, availability: 10, attribute: .none, width: 64, height: 128, offset: CGPoint(x: 0, y: -10), weak: [.none], strong: [.ice], drop: "Dagger", dropPercentage: 10, sleepPercentage: 1, skills: [.attack, .attack, .slash, .magicfire, .magicslow, .swiftfoot, .observe, .flee])
        monsters.append(monster)

        monster = Monster(name: "Giant Bat", image: "enemy_bat", level: 7, hpMax: 8, mpMax: 10, hp: 8, mp: 7, attackPower: 7, armorClass: 6, strength: 12, stamina: 9, intelligence: 9, agility: 19, xp: 10, gold: 0, startFloor: 7, endFloor: 10, availability: 100, attribute: .poison, width: 64, height: 128, offset: CGPoint(x: 0, y: -30), weak: [.fire], strong: [.none], drop: "Medical Herb", dropPercentage: 3, sleepPercentage: 5, skills: [.attack, .attack, .nailslash])
        monsters.append(monster)

        monster = Monster(name: "Cobra", image: "enemy_cobra", level: 8, hpMax: 13, mpMax: 10, hp: 13, mp: 9, attackPower: 9, armorClass: 7, strength: 12, stamina: 10, intelligence: 9, agility: 16, xp: 11, gold: 0, startFloor: 8, endFloor: 11, availability: 100, attribute: .poison, width: 64, height: 64, offset: CGPoint(x: 0, y: 0), weak: [.ice], strong: [.none], drop: "Wooden Ring", dropPercentage: 3, sleepPercentage: 1, skills: [.attack, .bite, .observe])
        monsters.append(monster)

        monster = Monster(name: "Brown Wolf", image: "enemy_wolf", level: 9, hpMax: 13, mpMax: 10, hp: 13, mp: 9, attackPower: 9, armorClass: 7, strength: 13, stamina: 11, intelligence: 10, agility: 16, xp: 12, gold: 0, startFloor: 9, endFloor: 12, availability: 100, attribute: .none, width: 64, height: 64, offset: CGPoint(x: 0, y: 0), weak: [.none], strong: [.ice], drop: "Beast Skin", dropPercentage: 10, sleepPercentage: 0, skills: [.attack, .bite, .rage])
        monsters.append(monster)

        monster = Monster(name: "Goo Boss", image: "enemy_goo_boss", level: 10, hpMax: 120, mpMax: 20, hp: 120, mp: 14, attackPower: 14, armorClass: 10, strength: 18, stamina: 18, intelligence: 13, agility: 13, xp: 50, gold: 25, startFloor: -1, endFloor: -1, availability: 0, attribute: .none, width: 310, height: 200, offset: CGPoint(x: 0, y: 20), weak: [.ice], strong: [.none], drop: "Ruby Ore", dropPercentage: 100, sleepPercentage: 0, skills: [.attack, .bite, .magicfire, .magicslow])
        monsters.append(monster)

        monster = Monster(name: "Toothed Worm", image: "enemy_worm", level: 10, hpMax: 8, mpMax: 10, hp: 8, mp: 10, attackPower: 10, armorClass: 8, strength: 14, stamina: 14, intelligence: 9, agility: 14, xp: 11, gold: 0, startFloor: 10, endFloor: 40, availability: 100, attribute: .none, width: 32, height: 64, offset: CGPoint(x: 0, y: 0), weak: [.ice], strong: [.fire], drop: "Gooey Blob", dropPercentage: 8, sleepPercentage: 5, skills: [.attack, .bite, .noattention])
        monsters.append(monster)

        monster = Monster(name: "Mantis", image: "enemy_mantis", level: 11, hpMax: 18, mpMax: 10, hp: 18, mp: 16, attackPower: 16, armorClass: 10, strength: 18, stamina: 19, intelligence: 11, agility: 16, xp: 14, gold: 0, startFloor: 11, endFloor: 19, availability: 100, attribute: .none, width: 64, height: 128, offset: CGPoint(x: 0, y: 10), weak: [.ice], strong: [.none], drop: "Medical Herb", dropPercentage: 3, sleepPercentage: 1, skills: [.attack, .nailslash, .stickyspit])
        monsters.append(monster)

        monster = Monster(name: "Giant Lizard", image: "enemy_lizard", level: 12, hpMax: 23, mpMax: 10, hp: 23, mp: 17, attackPower: 17, armorClass: 10, strength: 19, stamina: 21, intelligence: 11, agility: 16, xp: 16, gold: 0, startFloor: 12, endFloor: 19, availability: 100, attribute: .none, width: 64, height: 64, offset: CGPoint(x: 0, y: 0), weak: [.ice], strong: [.none], drop: "Thin Scale", dropPercentage: 10, sleepPercentage: 5, skills: [.attack, .bite, .tailswing, .regenerate])
        monsters.append(monster)

        monster = Monster(name: "Zombie", image: "enemy_zombie", level: 13, hpMax: 25, mpMax: 10, hp: 25, mp: 17, attackPower: 17, armorClass: 5, strength: 22, stamina: 22, intelligence: 11, agility: 15, xp: 17, gold: 1, startFloor: 13, endFloor: 19, availability: 100, attribute: .none, width: 64, height: 128, offset: CGPoint(x: 0, y: -15), weak: [.fire], strong: [.lightning], drop: "Doughnut Ring", dropPercentage: 3, sleepPercentage: 1, skills: [.attack, .bite, .observe, .mumble, .regenerate])
        monsters.append(monster)

        monster = Monster(name: "Hungry Zombie", image: "enemy_named_hungry_zombie", level: 13, hpMax: 35, mpMax: 10, hp: 35, mp: 17, attackPower: 17, armorClass: 6, strength: 22, stamina: 25, intelligence: 11, agility: 15, xp: 35, gold: 2, startFloor: 13, endFloor: 19, availability: 10, attribute: .none, width: 64, height: 128, offset: CGPoint(x: 0, y: -15), weak: [.fire], strong: [.lightning], drop: "Doughnut Ring", dropPercentage: 10, sleepPercentage: 1, skills: [.attack, .bite])
        monsters.append(monster)

        monster = Monster(name: "Molectric", image: "enemy_molectry", level: 14, hpMax: 25, mpMax: 10, hp: 25, mp: 18, attackPower: 18, armorClass: 11, strength: 18, stamina: 19, intelligence: 19, agility: 17, xp: 18, gold: 0, startFloor: 14, endFloor: 19, availability: 100, attribute: .none, width: 64, height: 64, offset: CGPoint(x: 0, y: 0), weak: [.none], strong: [.lightning], drop: "Malachite Ore", dropPercentage: 3, sleepPercentage: 1, skills: [.attack, .bite, .nailslash, .electriccharge])
        monsters.append(monster)

        monster = Monster(name: "Mummy", image: "enemy_mummy", level: 15, hpMax: 29, mpMax: 10, hp: 29, mp: 18, attackPower: 18, armorClass: 12, strength: 19, stamina: 25, intelligence: 18, agility: 18, xp: 19, gold: 2, startFloor: 15, endFloor: 19, availability: 100, attribute: .none, width: 64, height: 128, offset: CGPoint(x: 0, y: 0), weak: [.fire], strong: [.none], drop: "Malachite Ore", dropPercentage: 3, sleepPercentage: 10, skills: [.attack, .punch, .headbutt, .sleepbreath])
        monsters.append(monster)

        monster = Monster(name: "Spider", image: "enemy_spider", level: 16, hpMax: 10, mpMax: 10, hp: 10, mp: 12, attackPower: 12, armorClass: 8, strength: 16, stamina: 20, intelligence: 8, agility: 20, xp: 19, gold: 0, startFloor: 16, endFloor: 19, availability: 100, attribute: .poison, width: 32, height: 32, offset: CGPoint(x: 0, y: 0), weak: [.fire], strong: [.none], drop: "Antidote", dropPercentage: 3, sleepPercentage: 5, skills: [.attack, .attack, .bite, .noattention])
        monsters.append(monster)

        monster = Monster(name: "Giant Spider", image: "enemy_giant_spider", level: 17, hpMax: 21, mpMax: 10, hp: 21, mp: 19, attackPower: 19, armorClass: 9, strength: 16, stamina: 18, intelligence: 8, agility: 16, xp: 20, gold: 0, startFloor: 17, endFloor: 20, availability: 100, attribute: .none, width: 64, height: 64, offset: CGPoint(x: 0, y: 0), weak: [.fire], strong: [.none], drop: "Malachite Ore", dropPercentage: 3, sleepPercentage: 1, skills: [.attack, .attack, .bite, .stickyspit])
        monsters.append(monster)

        monster = Monster(name: "Goblin Rogue", image: "enemy_goblin", level: 18, hpMax: 23, mpMax: 10, hp: 23, mp: 20, attackPower: 20, armorClass: 13, strength: 18, stamina: 18, intelligence: 19, agility: 30, xp: 21, gold: 15, startFloor: 18, endFloor: 21, availability: 100, attribute: .none, width: 64, height: 128, offset: CGPoint(x: 0, y: 10), weak: [.none], strong: [.none], drop: "Amethyst Ore", dropPercentage: 6, sleepPercentage: 1, skills: [.attack, .slash, .nosepick, .swiftfoot, .stonefling])
        monsters.append(monster)

        monster = Monster(name: "Kobold", image: "enemy_kobold", level: 18, hpMax: 22, mpMax: 10, hp: 22, mp: 20, attackPower: 20, armorClass: 16, strength: 19, stamina: 17, intelligence: 18, agility: 26, xp: 21, gold: 8, startFloor: 18, endFloor: 21, availability: 100, attribute: .none, width: 64, height: 64, offset: CGPoint(x: 0, y: 0), weak: [.none], strong: [.none], drop: "Wooden Shield", dropPercentage: 6, sleepPercentage: 5, skills: [.attack, .slash, .nosepick, .swiftfoot, .stonefling, .magicheal])
        monsters.append(monster)

        monster = Monster(name: "Choma", image: "enemy_choma", level: 19, hpMax: 5, mpMax: 10, hp: 5, mp: 20, attackPower: 20, armorClass: 150, strength: 19, stamina: 100, intelligence: 200, agility: 18, xp: 500, gold: 500, startFloor: 30, endFloor: 49, availability: 1, attribute: .none, width: 32, height: 32, offset: CGPoint(x: 0, y: 0), weak: [.none], strong: [.none], drop: "Amethyst Ore", dropPercentage: 3, sleepPercentage: 1, skills: [.observe, .grin, .noattention, .daydream, .sleepbreath, .flee])
        monsters.append(monster)

        monster = Monster(name: "Mudman", image: "enemy_mudman", level: 20, hpMax: 25, mpMax: 10, hp: 25, mp: 20, attackPower: 20, armorClass: 15, strength: 30, stamina: 22, intelligence: 12, agility: 19, xp: 21, gold: 0, startFloor: 20, endFloor: 23, availability: 100, attribute: .none, width: 64, height: 128, offset: CGPoint(x: 0, y: 5), weak: [.ice], strong: [.none], drop: "Malachite Ore", dropPercentage: 3, sleepPercentage: 0, skills: [.attack, .rushcharge, .regenerate])
        monsters.append(monster)

        monster = Monster(name: "Mist Frog", image: "enemy_mist_frog", level: 22, hpMax: 27, mpMax: 10, hp: 27, mp: 23, attackPower: 23, armorClass: 17, strength: 20, stamina: 50, intelligence: 22, agility: 21, xp: 21, gold: 0, startFloor: 22, endFloor: 25, availability: 100, attribute: .none, width: 64, height: 64, offset: CGPoint(x: 0, y: 0), weak: [.ice], strong: [.none], drop: "Malachite Ore", dropPercentage: 3, sleepPercentage: 10, skills: [.attack, .bite, .poisonbreath])
        monsters.append(monster)

        monster = Monster(name: "Skeleton", image: "enemy_skeleton", level: 23, hpMax: 28, mpMax: 10, hp: 28, mp: 26, attackPower: 26, armorClass: 18, strength: 29, stamina: 20, intelligence: 22, agility: 20, xp: 22, gold: 11, startFloor: 23, endFloor: 26, availability: 100, attribute: .none, width: 64, height: 128, offset: CGPoint(x: 0, y: -20), weak: [.none], strong: [.none], drop: "Medical Herb", dropPercentage: 6, sleepPercentage: 3, skills: [.attack, .slash, .perseverence, .regenerate])
        monsters.append(monster)

        monster = Monster(name: "Deadly Plant", image: "enemy_deadlyplant", level: 24, hpMax: 29, mpMax: 12, hp: 29, mp: 25, attackPower: 25, armorClass: 16, strength: 28, stamina: 44, intelligence: 22, agility: 20, xp: 22, gold: 0, startFloor: 24, endFloor: 27, availability: 100, attribute: .poison, width: 64, height: 64, offset: CGPoint(x: 0, y: 0), weak: [.fire], strong: [.none], drop: "Antidote", dropPercentage: 3, sleepPercentage: 3, skills: [.attack, .attack, .bite, .acidspit])
        monsters.append(monster)

        monster = Monster(name: "Reaper Candidate", image: "enemy_reaper", level: 25, hpMax: 29, mpMax: 10, hp: 29, mp: 23, attackPower: 23, armorClass: 19, strength: 19, stamina: 18, intelligence: 35, agility: 45, xp: 22, gold: 8, startFloor: 25, endFloor: 28, availability: 100, attribute: .none, width: 64, height: 128, offset: CGPoint(x: 0, y: -15), weak: [.none], strong: [.none], drop: "Skull Ring", dropPercentage: 3, sleepPercentage: 0, skills: [.attack, .slash, .magiclightning])
        monsters.append(monster)

        monster = Monster(name: "Being of the Dark", image: "enemy_named_being_of_the_dark", level: 25, hpMax: 40, mpMax: 10, hp: 40, mp: 23, attackPower: 23, armorClass: 19, strength: 19, stamina: 18, intelligence: 35, agility: 45, xp: 40, gold: 8, startFloor: 25, endFloor: 28, availability: 10, attribute: .none, width: 64, height: 128, offset: CGPoint(x: 0, y: -15), weak: [.none], strong: [.none], drop: "Skull Ring", dropPercentage: 10, sleepPercentage: 0, skills: [.attack, .slash, .magiclightning, .magicfire])
        monsters.append(monster)

        monster = Monster(name: "Berserk Ostrich", image: "enemy_ostrich", level: 26, hpMax: 30, mpMax: 10, hp: 30, mp: 25, attackPower: 25, armorClass: 20, strength: 22, stamina: 23, intelligence: 22, agility: 30, xp: 23, gold: 7, startFloor: 26, endFloor: 29, availability: 100, attribute: .confuse, width: 64, height: 128, offset: CGPoint(x: 0, y: -32), weak: [.none], strong: [.none], drop: "Amethyst Ore", dropPercentage: 3, sleepPercentage: 1, skills: [.attack, .stomp, .swiftfoot])
        monsters.append(monster)

        monster = Monster(name: "Sniffer", image: "enemy_sniffer", level: 27, hpMax: 30, mpMax: 20, hp: 30, mp: 28, attackPower: 28, armorClass: 21, strength: 27, stamina: 26, intelligence: 22, agility: 30, xp: 24, gold: 8, startFloor: 27, endFloor: 30, availability: 100, attribute: .none, width: 64, height: 128, offset: CGPoint(x: 0, y: 0), weak: [.none], strong: [.none], drop: "Amethyst Ore", dropPercentage: 3, sleepPercentage: 2, skills: [.attack, .punch, .hurl, .nosepick])
        monsters.append(monster)

        monster = Monster(name: "Goblin Shaman", image: "enemy_goblin_shaman", level: 28, hpMax: 31, mpMax: 20, hp: 31, mp: 22, attackPower: 22, armorClass: 22, strength: 20, stamina: 26, intelligence: 36, agility: 28, xp: 25, gold: 7, startFloor: 28, endFloor: 31, availability: 100, attribute: .none, width: 64, height: 128, offset: CGPoint(x: 0, y: 0), weak: [.none], strong: [.none], drop: "Fresh Water", dropPercentage: 6, sleepPercentage: 2, skills: [.attack, .slash, .mumble, .magicfire, .magicice, .magicheal])
        monsters.append(monster)

        monster = Monster(name: "Groucher", image: "enemy_groucher", level: 29, hpMax: 31, mpMax: 20, hp: 31, mp: 25, attackPower: 25, armorClass: 45, strength: 32, stamina: 12, intelligence: 20, agility: 28, xp: 25, gold: 0, startFloor: 29, endFloor: 32, availability: 100, attribute: .none, width: 64, height: 64, offset: CGPoint(x: 0, y: 0), weak: [.lightning], strong: [.ice], drop: "Thick Scale", dropPercentage: 10, sleepPercentage: 1, skills: [.attack, .nailslash])
        monsters.append(monster)

        monster = Monster(name: "Gustor", image: "enemy_twin_short", level: 35, hpMax: 200, mpMax: 20, hp: 200, mp: 28, attackPower: 28, armorClass: 35, strength: 33, stamina: 45, intelligence: 45, agility: 45, xp: 200, gold: 50, startFloor: -1, endFloor: -1, availability: 100, attribute: .none, width: 128, height: 128, offset: CGPoint(x: 0, y: 0), weak: [.ice], strong: [.fire], drop: "Battle Axe", dropPercentage: 100, sleepPercentage: 0, skills: [.attack, .rushcharge, .nailslash, .slash, .rage, .magicheal])
        monsters.append(monster)

        monster = Monster(name: "Polk", image: "enemy_twin_fat", level: 35, hpMax: 250, mpMax: 10, hp: 250, mp: 30, attackPower: 30, armorClass: 30, strength: 41, stamina: 30, intelligence: 15, agility: 20, xp: 200, gold: 50, startFloor: -1, endFloor: -1, availability: 100, attribute: .none, width: 128, height: 128, offset: CGPoint(x: 0, y: -32), weak: [.fire], strong: [.ice], drop: "Black Stone", dropPercentage: 100, sleepPercentage: 0, skills: [.attack, .stomp, .crush, .hurl, .perseverence])
        monsters.append(monster)

        monster = Monster(name: "Larva", image: "enemy_larva", level: 30, hpMax: 25, mpMax: 10, hp: 25, mp: 24, attackPower: 24, armorClass: 22, strength: 30, stamina: 25, intelligence: 21, agility: 28, xp: 25, gold: 0, startFloor: 30, endFloor: 39, availability: 100, attribute: .none, width: 32, height: 32, offset: CGPoint(x: 0, y: 0), weak: [.ice], strong: [.fire], drop: "Rubber Band", dropPercentage: 3, sleepPercentage: 5, skills: [.attack, .attack, .bite, .attack, .stickyspit, .sleepbreath, .noattention, .flee])
        monsters.append(monster)

        monster = Monster(name: "Goo Adult", image: "enemy_goo_adult", level: 40, hpMax: 40, mpMax: 10, hp: 40, mp: 25, attackPower: 25, armorClass: 15, strength: 34, stamina: 33, intelligence: 22, agility: 29, xp: 30, gold: 0, startFloor: 30, endFloor: 39, availability: 80, attribute: .none, width: 64, height: 64, offset: CGPoint(x: 0, y: 0), weak: [.ice, .fire, .lightning], strong: [.none], drop: "Green Tea", dropPercentage: 2, sleepPercentage: 3, skills: [.attack, .bite, .bite, .magicfire, .regenerate])
        monsters.append(monster)

        monster = Monster(name: "Raider", image: "enemy_raider", level: 31, hpMax: 37, mpMax: 0, hp: 37, mp: 24, attackPower: 24, armorClass: 25, strength: 32, stamina: 55, intelligence: 24, agility: 55, xp: 34, gold: 13, startFloor: 31, endFloor: 39, availability: 100, attribute: .poison, width: 64, height: 128, offset: CGPoint(x: 0, y: -10), weak: [.none], strong: [.none], drop: "Poison Dagger", dropPercentage: 6, sleepPercentage: 1, skills: [.attack, .slash, .poisonbreath, .magicfire, .grin])
        monsters.append(monster)

        monster = Monster(name: "Fire Golem", image: "enemy_fireman", level: 32, hpMax: 36, mpMax: 30, hp: 36, mp: 27, attackPower: 27, armorClass: 25, strength: 33, stamina: 30, intelligence: 24, agility: 29, xp: 35, gold: 0, startFloor: 32, endFloor: 34, availability: 100, attribute: .none, width: 64, height: 128, offset: CGPoint(x: 0, y: 0), weak: [.ice], strong: [.fire], drop: "Emerald Ore", dropPercentage: 3, sleepPercentage: 0, skills: [.attack, .punch, .firebreath, .magicfire])
        monsters.append(monster)

        monster = Monster(name: "Orc Warrior", image: "enemy_orc", level: 33, hpMax: 42, mpMax: 0, hp: 42, mp: 29, attackPower: 29, armorClass: 26, strength: 37, stamina: 28, intelligence: 24, agility: 27, xp: 36, gold: 15, startFloor: 33, endFloor: 36, availability: 100, attribute: .none, width: 64, height: 128, offset: CGPoint(x: 0, y: -20), weak: [.none], strong: [.none], drop: "Ruby Ore", dropPercentage: 6, sleepPercentage: 0, skills: [.attack, .slash, .rushcharge, .rage])
        monsters.append(monster)

        monster = Monster(name: "Frostfrog", image: "enemy_frog", level: 34, hpMax: 37, mpMax: 50, hp: 37, mp: 30, attackPower: 30, armorClass: 26, strength: 39, stamina: 28, intelligence: 24, agility: 32, xp: 37, gold: 0, startFloor: 34, endFloor: 37, availability: 100, attribute: .none, width: 64, height: 64, offset: CGPoint(x: 0, y: 0), weak: [.fire], strong: [.ice], drop: "Amethyst Ore", dropPercentage: 3, sleepPercentage: 5, skills: [.attack, .bite, .icebreath])
        monsters.append(monster)

        monster = Monster(name: "Twintail", image: "enemy_twintail", level: 35, hpMax: 37, mpMax: 50, hp: 37, mp: 31, attackPower: 31, armorClass: 27, strength: 42, stamina: 27, intelligence: 44, agility: 33, xp: 38, gold: 0, startFloor: 35, endFloor: 38, availability: 100, attribute: .none, width: 64, height: 64, offset: CGPoint(x: 0, y: 0), weak: [.fire], strong: [.ice], drop: "Thick Beast Skin", dropPercentage: 3, sleepPercentage: 0, skills: [.attack, .bite, .rage, .magicice])
        monsters.append(monster)

        monster = Monster(name: "Cursed Puppet", image: "enemy_puppet", level: 36, hpMax: 38, mpMax: 50, hp: 38, mp: 32, attackPower: 32, armorClass: 27, strength: 33, stamina: 55, intelligence: 33, agility: 33, xp: 39, gold: 0, startFloor: 36, endFloor: 38, availability: 100, attribute: .confuse, width: 64, height: 128, offset: CGPoint(x: 0, y: 10), weak: [.fire], strong: [.none], drop: "Emerald Ore", dropPercentage: 3, sleepPercentage: 0, skills: [.attack, .headbutt, .daydream, .magicheal])
        monsters.append(monster)

        monster = Monster(name: "Ice Golem", image: "enemy_iceman", level: 37, hpMax: 43, mpMax: 50, hp: 43, mp: 33, attackPower: 33, armorClass: 28, strength: 33, stamina: 32, intelligence: 33, agility: 33, xp: 40, gold: 0, startFloor: 37, endFloor: 39, availability: 100, attribute: .none, width: 64, height: 128, offset: CGPoint(x: 0, y: 0), weak: [.fire], strong: [.none], drop: "Amethyst Ore", dropPercentage: 3, sleepPercentage: 0, skills: [.attack, .rage, .magicice, .icebreath])
        monsters.append(monster)

        monster = Monster(name: "Ghoul", image: "enemy_ghoul", level: 38, hpMax: 55, mpMax: 50, hp: 55, mp: 34, attackPower: 34, armorClass: 22, strength: 31, stamina: 40, intelligence: 31, agility: 30, xp: 41, gold: 0, startFloor: 38, endFloor: 41, availability: 100, attribute: .none, width: 64, height: 128, offset: CGPoint(x: 0, y: -15), weak: [.ice], strong: [.none], drop: "Emerald Ore", dropPercentage: 3, sleepPercentage: 0, skills: [.attack, .punch, .magicice, .icebreath])
        monsters.append(monster)

        monster = Monster(name: "Black Worm", image: "enemy_blackworm", level: 39, hpMax: 30, mpMax: 50, hp: 30, mp: 35, attackPower: 35, armorClass: 33, strength: 31, stamina: 44, intelligence: 31, agility: 31, xp: 42, gold: 0, startFloor: 39, endFloor: 49, availability: 100, attribute: .poison, width: 32, height: 64, offset: CGPoint(x: 0, y: 0), weak: [.lightning], strong: [.none], drop: "Emerald Ore", dropPercentage: 3, sleepPercentage: 2, skills: [.attack, .magiclightning, .noattention])
        monsters.append(monster)

        monster = Monster(name: "Viper", image: "enemy_viper", level: 40, hpMax: 40, mpMax: 50, hp: 40, mp: 36, attackPower: 36, armorClass: 34, strength: 32, stamina: 55, intelligence: 31, agility: 50, xp: 34, gold: 0, startFloor: 40, endFloor: 43, availability: 100, attribute: .poison, width: 64, height: 64, offset: CGPoint(x: 0, y: 0), weak: [.ice], strong: [.none], drop: "Hard Scale", dropPercentage: 3, sleepPercentage: 5, skills: [.attack, .bite, .regenerate, .icebreath])
        monsters.append(monster)

        monster = Monster(name: "Chimera", image: "enemy_chimera", level: 41, hpMax: 55, mpMax: 50, hp: 55, mp: 42, attackPower: 42, armorClass: 29, strength: 38, stamina: 33, intelligence: 35, agility: 33, xp: 55, gold: 0, startFloor: 39, endFloor: 44, availability: 100, attribute: .none, width: 128, height: 128, offset: CGPoint(x: 0, y: 0), weak: [.none], strong: [.lightning], drop: "Amethyst Ore", dropPercentage: 3, sleepPercentage: 0, skills: [.attack, .bite, .rushcharge, .firebreath, .magicconfuse])
        monsters.append(monster)

        monster = Monster(name: "Skeleton Lieutenant", image: "enemy_skeleton_lieutenant", level: 41, hpMax: 50, mpMax: 0, hp: 50, mp: 33, attackPower: 33, armorClass: 34, strength: 30, stamina: 28, intelligence: 28, agility: 40, xp: 100, gold: 1, startFloor: -1, endFloor: -1, availability: 100, attribute: .none, width: 64, height: 128, offset: CGPoint(x: 0, y: -20), weak: [.lightning, .fire], strong: [.none], drop: "Amethyst Ore", dropPercentage: 100, sleepPercentage: 0, skills: [.attack, .slash, .perseverence, .regenerate])
        monsters.append(monster)

        monster = Monster(name: "Zarzam", image: "enemy_zarzam", level: 45, hpMax: 500, mpMax: 500, hp: 500, mp: 35, attackPower: 35, armorClass: 30, strength: 33, stamina: 25, intelligence: 56, agility: 28, xp: 300, gold: 300, startFloor: -1, endFloor: -1, availability: 100, attribute: .none, width: 128, height: 128, offset: CGPoint(x: 0, y: -25), weak: [.none], strong: [.none], drop: "Potion", dropPercentage: 100, sleepPercentage: 0, skills: [.attack, .magicice, .magicfire, .magiclightning, .magicraisedead, .magicconfuse])
        monsters.append(monster)

        monster = Monster(name: "Evil Minion", image: "enemy_minion", level: 41, hpMax: 40, mpMax: 50, hp: 40, mp: 29, attackPower: 29, armorClass: 29, strength: 33, stamina: 33, intelligence: 31, agility: 66, xp: 44, gold: 0, startFloor: 41, endFloor: 44, availability: 100, attribute: .confuse, width: 64, height: 128, offset: CGPoint(x: 0, y: -10), weak: [.lightning], strong: [.none], drop: "Emerald Ore", dropPercentage: 6, sleepPercentage: 1, skills: [.attack, .slash, .magicfire, .magiclightning])
        monsters.append(monster)

        monster = Monster(name: "Foolish Evil", image: "enemy_named_foolish_evil", level: 41, hpMax: 55, mpMax: 50, hp: 55, mp: 36, attackPower: 36, armorClass: 29, strength: 33, stamina: 33, intelligence: 31, agility: 66, xp: 44, gold: 0, startFloor: 41, endFloor: 44, availability: 2, attribute: .confuse, width: 64, height: 128, offset: CGPoint(x: 0, y: -10), weak: [.lightning], strong: [.none], drop: "Emerald Ore", dropPercentage: 10, sleepPercentage: 0, skills: [.attack, .headbutt, .daydream, .nosepick, .noattention])
        monsters.append(monster)

        monster = Monster(name: "Goblin Sorcerer", image: "enemy_goblin_sorcerer", level: 42, hpMax: 39, mpMax: 50, hp: 39, mp: 30, attackPower: 30, armorClass: 36, strength: 38, stamina: 31, intelligence: 44, agility: 33, xp: 45, gold: 16, startFloor: 42, endFloor: 45, availability: 100, attribute: .none, width: 64, height: 128, offset: CGPoint(x: 0, y: -10), weak: [.none], strong: [.none], drop: "Fresh Water", dropPercentage: 6, sleepPercentage: 1, skills: [.magicinferno, .magicblizzard, .magicthunderstorm, .magicconfuse])
        monsters.append(monster)

        monster = Monster(name: "Orc General", image: "enemy_orc_general", level: 43, hpMax: 66, mpMax: 50, hp: 66, mp: 37, attackPower: 37, armorClass: 37, strength: 46, stamina: 41, intelligence: 39, agility: 55, xp: 46, gold: 16, startFloor: 43, endFloor: 47, availability: 100, attribute: .none, width: 64, height: 128, offset: CGPoint(x: 0, y: -20), weak: [.lightning], strong: [.none], drop: "Potion", dropPercentage: 6, sleepPercentage: 0, skills: [.headbutt, .slash, .punch, .rushcharge])
        monsters.append(monster)

        monster = Monster(name: "Advancded Larva", image: "enemy_larva", level: 45, hpMax: 45, mpMax: 10, hp: 45, mp: 34, attackPower: 34, armorClass: 32, strength: 40, stamina: 25, intelligence: 21, agility: 38, xp: 35, gold: 0, startFloor: 30, endFloor: 39, availability: 100, attribute: .none, width: 32, height: 32, offset: CGPoint(x: 0, y: 0), weak: [.ice], strong: [.fire], drop: "Rubber Band", dropPercentage: 3, sleepPercentage: 5, skills: [.attack, .attack, .bite, .attack, .stickyspit, .sleepbreath, .noattention, .flee])
        monsters.append(monster)

        monster = Monster(name: "Orc", image: "enemy_orc", level: 45, hpMax: 66, mpMax: 0, hp: 66, mp: 37, attackPower: 37, armorClass: 37, strength: 40, stamina: 44, intelligence: 27, agility: 44, xp: 50, gold: 17, startFloor: 43, endFloor: 47, availability: 100, attribute: .none, width: 64, height: 128, offset: CGPoint(x: 0, y: -20), weak: [.lightning], strong: [.none], drop: "Fresh Water", dropPercentage: 6, sleepPercentage: 0, skills: [.attack, .slash, .rushcharge, .rage])
        monsters.append(monster)

        monster = Monster(name: "Golem", image: "enemy_golem", level: 44, hpMax: 99, mpMax: 50, hp: 99, mp: 38, attackPower: 38, armorClass: 38, strength: 50, stamina: 55, intelligence: 22, agility: 45, xp: 47, gold: 0, startFloor: 44, endFloor: 49, availability: 100, attribute: .none, width: 128, height: 128, offset: CGPoint(x: 0, y: -20), weak: [.lightning], strong: [.none], drop: "Emerald Ore", dropPercentage: 5, sleepPercentage: 0, skills: [.headbutt, .hurl, .stonefling, .stomp, .crush, .perseverence])
        monsters.append(monster)

        monster = Monster(name: "Ogre", image: "enemy_ogre", level: 45, hpMax: 120, mpMax: 50, hp: 120, mp: 39, attackPower: 39, armorClass: 39, strength: 66, stamina: 60, intelligence: 21, agility: 45, xp: 48, gold: 2, startFloor: 45, endFloor: 49, availability: 100, attribute: .none, width: 128, height: 128, offset: CGPoint(x: 0, y: -30), weak: [.lightning], strong: [.none], drop: "Medical Herb", dropPercentage: 5, sleepPercentage: 5, skills: [.headbutt, .hurl, .stonefling, .stomp, .crush, .perseverence])
        monsters.append(monster)

        monster = Monster(name: "Orc Necromancer", image: "enemy_orc_necromancer", level: 46, hpMax: 55, mpMax: 50, hp: 55, mp: 30, attackPower: 30, armorClass: 40, strength: 29, stamina: 44, intelligence: 66, agility: 49, xp: 49, gold: 22, startFloor: 46, endFloor: 49, availability: 100, attribute: .none, width: 64, height: 128, offset: CGPoint(x: 0, y: -20), weak: [.lightning], strong: [.none], drop: "Green Tea", dropPercentage: 6, sleepPercentage: 0, skills: [.magicraisedead, .magicfire, .magicice, .magicthunderstorm, .magicheal, .observe])
        monsters.append(monster)

        monster = Monster(name: "Dragon", image: "enemy_dragon", level: 47, hpMax: 150, mpMax: 30, hp: 150, mp: 45, attackPower: 45, armorClass: 45, strength: 70, stamina: 70, intelligence: 70, agility: 70, xp: 50, gold: 27, startFloor: 47, endFloor: 49, availability: 100, attribute: .none, width: 128, height: 128, offset: CGPoint(x: 0, y: -20), weak: [.ice], strong: [.none], drop: "Diamond Ore", dropPercentage: 5, sleepPercentage: 0, skills: [.attack, .rushcharge, .nailslash, .tailswing, .firebreath, .magiclightning, .regenerate])
        monsters.append(monster)

        monster = Monster(name: "Two-Headed Dragon", image: "enemy_last_boss", level: 60, hpMax: 1500, mpMax: 500, hp: 1500, mp: 70, attackPower: 70, armorClass: 70, strength: 70, stamina: 70, intelligence: 70, agility: 70, xp: 600, gold: 600, startFloor: -1, endFloor: -1, availability: 100, attribute: .poison, width: 310, height: 200, offset: CGPoint(x: 0, y: 0), weak: [.none], strong: [.none], drop: "Potion", dropPercentage: 0, sleepPercentage: 0, skills: [.attack, .rushcharge, .nailslash, .tailswing, .firebreath, .icebreath, .regenerate])
        monsters.append(monster)

        monster = Monster(name: "Poisonous Porcupine", image: "enemy_poisonous_porcupine", level: 32, hpMax: 20, mpMax: 10, hp: 20, mp: 28, attackPower: 28, armorClass: 30, strength: 29, stamina: 35, intelligence: 21, agility: 31, xp: 32, gold: 0, startFloor: 1, endFloor: 10, availability: 100, attribute: .poison, width: 32, height: 32, offset: CGPoint(x: 0, y: 0), weak: [.none], strong: [.none], drop: "Bandage", dropPercentage: 6, sleepPercentage: 5, skills: [.attack, .rushcharge, .bite, .observe])
        monsters.append(monster)

        monster = Monster(name: "Little Ent", image: "enemy_little_ent", level: 35, hpMax: 30, mpMax: 0, hp: 30, mp: 30, attackPower: 30, armorClass: 30, strength: 31, stamina: 36, intelligence: 29, agility: 29, xp: 34, gold: 0, startFloor: 1, endFloor: 10, availability: 100, attribute: .none, width: 128, height: 128, offset: CGPoint(x: 0, y: 0), weak: [.lightning, .fire], strong: [.none], drop: "Poison Dagger", dropPercentage: 6, sleepPercentage: 1, skills: [.attack, .headbutt, .poisonbreath, .observe, .noattention])
        monsters.append(monster)

        monster = Monster(name: "Metal Turtle", image: "enemy_metal_turtle", level: 31, hpMax: 37, mpMax: 0, hp: 37, mp: 20, attackPower: 20, armorClass: 35, strength: 32, stamina: 60, intelligence: 20, agility: 55, xp: 34, gold: 19, startFloor: 35, endFloor: 47, availability: 100, attribute: .none, width: 128, height: 128, offset: CGPoint(x: 0, y: 0), weak: [.lightning], strong: [.none], drop: "Poison Dagger", dropPercentage: 6, sleepPercentage: 20, skills: [.attack, .rushcharge, .bite, .observe, .tailswing])
        monsters.append(monster)

        monster = Monster(name: "Fire Falcon", image: "enemy_fire_falcon", level: 45, hpMax: 70, mpMax: 30, hp: 70, mp: 40, attackPower: 40, armorClass: 40, strength: 37, stamina: 39, intelligence: 35, agility: 44, xp: 60, gold: 30, startFloor: 45, endFloor: 49, availability: 50, attribute: .none, width: 128, height: 128, offset: CGPoint(x: 0, y: 0), weak: [.ice], strong: [.fire], drop: "Beast Ring", dropPercentage: 10, sleepPercentage: 1, skills: [.attack, .headbutt, .firebreath, .magiclightning])
        monsters.append(monster)
    }
}
