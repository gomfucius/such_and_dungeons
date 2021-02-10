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
    
    init() {
        game.app = self
    }
        
}
