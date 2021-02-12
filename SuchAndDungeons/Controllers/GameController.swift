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
    
    func removeMinion(with id: String) {
        if let index = floors[0]?.minions.map({ $0.identity.id }).firstIndex(of: id) {
            floors[0]?.minions.remove(at: index)
            app?.objectWillChange.send()
        }
    }
    
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
