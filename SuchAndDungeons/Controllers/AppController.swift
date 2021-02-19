//
//  AppController.swift
//  SuchAndDungeons
//
//  Created by Genki Mine on 2/8/21.
//

import Combine
import Foundation

class AppController: ObservableObject {
    
    @Published var game = GameController()
    @Published var moveable = MovableController()
    @Published var player = PlayerController()

    init() {
        game.app = self
        moveable.app = self
    }
        
}
