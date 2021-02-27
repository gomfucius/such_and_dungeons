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
        floors[floorNumber]?.addMinion(floorNumber: floorNumber)
        app?.objectWillChange.send()
    }
    
    func addEnemy(floorNumber: Int) {
        floors[floorNumber]?.addEnemy(floorNumber: floorNumber)
        app?.objectWillChange.send()
    }
    
    func removeMinion(with id: String) {
        if let index = floors[0]?.minions.map({ $0.identity.id }).firstIndex(of: id) {
            floors[0]?.minions.remove(at: index)
            app?.objectWillChange.send()
        }
    }
    
    func removeEnemy(with id: String) {
        if let index = floors[0]?.enemies.map({ $0.identity.id }).firstIndex(of: id) {
            let enemy = floors[0]?.enemies[index]
            floors[0]?.enemies.remove(at: index)
            app?.objectWillChange.send()
        }
    }
    
}
