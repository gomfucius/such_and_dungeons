//
//  MoveableController.swift
//  SuchAndDungeons
//
//  Created by Genki Mine on 2/13/21.
//

import Combine
import Foundation

class MovableController {
    
    weak var app: AppController?
    var minions = [MovableViewModel]()
    var enemies = [MovableViewModel]()
    
    var cancellable: AnyCancellable?
    
    init() {
        cancellable = Timer.publish(every: Variables.interval, on: .main, in: .common).autoconnect()
            .sink { [weak self] _ in
                guard let self = self else { return }
                
                var minionsCopy = self.minions
                for minion in self.minions {
                    for enemy in self.enemies {
                        if minion.offset.x + Variables.hitThreshold > enemy.offset.x {
                            if let index = minionsCopy.firstIndex(of: minion) {
                                minionsCopy.remove(at: index)
                                self.app?.game.removeMinion(with: minion.identity?.id ?? "7")
                                break
                            }
                        }
                    }
                }
                self.minions = minionsCopy
            }
    }
}
