//
//  GameController.swift
//  SuchAndDungeons
//
//  Created by Genki Mine on 2/8/21.
//

import Foundation

class GameController: ObservableObject {
    
    weak var app: AppController?
    @Published var floors = [Int: Floor]()
    
    init() {
        floors[0] = Floor()
        addMinion(floorNumber: 0)
        addEnemy(floorNumber: 0)
    }
    
    func addMinion(floorNumber: Int) {
        floors[floorNumber]?.addMinion()
        app?.objectWillChange.send()
    }
    
    func addEnemy(floorNumber: Int) {
        floors[floorNumber]?.addEnemy()
    }
    
}

class Floor {
    
    @Published var minions = [Minion]()
    @Published var enemies = [Enemy]()
    
    func addMinion() {
        minions.append(Minion(name: "\(Int.random(in: 0...1000))"))
    }
    
    func addEnemy() {
        enemies.append(Enemy())
    }
}

class Minion: Identifiable, Hashable {
    
    var name: String = ""
    
    init(name: String) {
        self.name = name
    }
    
    static func == (lhs: Minion, rhs: Minion) -> Bool {
        return lhs.name == rhs.name
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
    
}

class Enemy: Identifiable, Hashable {
    
    var name: String = ""
    
    static func == (lhs: Enemy, rhs: Enemy) -> Bool {
        return lhs.name == rhs.name
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
}
