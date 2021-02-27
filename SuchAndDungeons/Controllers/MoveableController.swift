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
    var notificationCancellable: AnyCancellable?

    init() {
        start()
        notificationCancellable = NotificationCenter.default
            .publisher(for: Notification.intervalDidChange)
            .sink { _ in
                self.cancellable?.cancel()
                self.start()
            }
    }
    
    func pause() {
        cancellable?.cancel()
        minions.forEach { $0.pause() }
        enemies.forEach { $0.pause() }
    }
    
    func unpause() {
        start()
        minions.forEach { $0.start() }
        enemies.forEach { $0.start() }
    }
    
    func start() {
        cancellable = Timer.publish(every: Variables.interval, on: .main, in: .common).autoconnect()
            .sink { [weak self] _ in
                guard let self = self else { return }
                
                var minionsCopy = self.minions
                var enemiesCopy = self.enemies
                for minion in self.minions {
                    minion.state = .moving
                    for enemy in self.enemies {
                        // If minion is close enough, go into battle
                        if minion.offset.x + Variables.hitThreshold > enemy.offset.x {
                            minion.battle(enemyMovableViewModel: enemy)
                            if minion.minion?.isDead == true {
                                if let index = minionsCopy.firstIndex(of: minion) {
                                    minionsCopy.remove(at: index)
                                    self.app?.game.removeMinion(with: minion.minion?.identity.id ?? "7")
                                }
                            }
                            
                            if enemy.enemy?.isDead == true {
                                if let index = enemiesCopy.firstIndex(of: enemy) {
                                    enemiesCopy.remove(at: index)
                                    self.app?.game.removeEnemy(with: enemy.enemy?.identity.id ?? "7")
                                    self.app?.player.addGold(enemy.enemy?.gold ?? 0)
                                }
                            }
                            // Exits for loop on enemies and go to next minion
                            continue
                        } else {
                            enemy.state = .moving
                        }
                    }
                }
                if self.minions.count == 0 {
                    for enemy in self.enemies {
                        enemy.state = .moving
                    }
                }
                self.minions = minionsCopy
                self.enemies = enemiesCopy
            }
    }
    
    func removeEnemy(_ enemyViewModel: MovableViewModel) {
        var enemiesCopy = self.enemies
        if let index = enemiesCopy.firstIndex(of: enemyViewModel) {
            enemiesCopy.remove(at: index)
            self.app?.game.removeEnemy(with: enemyViewModel.enemy?.identity.id ?? "7")
        }
        self.enemies = enemiesCopy
    }
    
    func removeMinion(_ minionViewModel: MovableViewModel) {
        var minionsCopy = self.minions
        if let index = minionsCopy.firstIndex(of: minionViewModel) {
            minionsCopy.remove(at: index)
            self.app?.game.removeMinion(with: minionViewModel.minion?.identity.id ?? "7")
        }
        self.minions = minionsCopy
    }
}
