//
//  MovableViewModel.swift
//  SuchAndDungeons
//
//  Created by Genki Mine on 2/16/21.
//

import Combine
import Foundation
import UIKit

class MovableViewModel: ObservableObject, Equatable {
    
    enum Direction {
        case left, right
    }
    
    enum State {
        case moving
        case battling
    }
    
    @Published var offset: CGPoint = CGPoint(x: 0, y: 0)
    var direction: Direction
    var app: AppController?
    var xCancellable: AnyCancellable?
    var yCancellable: AnyCancellable?
    var notificationCancellable: AnyCancellable?
    var minion: Minion?
    var enemy: Enemy?
    var state: State = .moving

    init(direction: Direction) {
        self.direction = direction
        
        start()
        notificationCancellable = NotificationCenter.default
            .publisher(for: Notification.intervalDidChange)
            .sink { _ in
                self.xCancellable?.cancel()
                self.yCancellable?.cancel()
                self.start()
            }
    }
    
    func pause() {
        xCancellable?.cancel()
        yCancellable?.cancel()
    }
    
    func start() {
        xCancellable = Timer.publish(every: Variables.interval, on: .main, in: .common).autoconnect()
            .sink { [weak self] _ in
                guard let self = self else { return }
                if self.state == .moving {
                    self.offset.x += self.direction == .right ? 10 : -10
                    if self.direction == .left {
                        if self.offset.x < CGFloat(-200) {
                            self.app?.player.addHP(-1)
                            self.xCancellable?.cancel()
                            self.yCancellable?.cancel()
                            self.app?.moveable.removeEnemy(self)
                            self.app?.objectWillChange.send()
                        }
                    }
                    
                    if self.direction == .right {
                        if self.offset.x > CGFloat(200) {
                            self.xCancellable?.cancel()
                            self.yCancellable?.cancel()
                            self.app?.moveable.removeMinion(self)
                            self.app?.objectWillChange.send()
                        }
                    }
                }
            }
        
        yCancellable = Timer.publish(every: 0.5, on: .main, in: .common).autoconnect()
            .sink { [weak self] _ in
                if self?.offset.y == 0 {
                    self?.offset.y += 3
                } else {
                    self?.offset.y -= 3
                }
            }
    }
    
    func onAppear(minion: Minion) {
        self.minion = minion
        doDirection()
    }
    
    func onAppear(enemy: Enemy) {
        self.enemy = enemy
        doDirection()
    }
    
    func battle(enemyMovableViewModel: MovableViewModel) {
        self.state = .battling
        enemyMovableViewModel.state = .battling
        guard let monster = minion, let enemy = enemyMovableViewModel.enemy else { return }
        
        let damageToMe = calculateDamage(attacker: enemy, target: monster)
        monster.damage(damageToMe)
        let damageToThem = calculateDamage(attacker: monster, target: enemy)
        enemy.damage(damageToThem)
    }
    
    // MARK: - Private
    
    private func calculateDamage(attacker: SuchUnit, target: SuchUnit) -> Int {
        let damage = (attacker.attackPower + attacker.strength / 2) / 2 - (target.armorClass + target.stamina / 2) / 4
        if damage <= 0 {
            return 1
        }
        return damage
    }
    
    private func doDirection() {
        switch direction {
        case .left:
            offset = CGPoint(x: 200, y: 0)
            app?.moveable.enemies.append(self)
        case .right:
            offset = CGPoint(x: -200, y: 0)
            app?.moveable.minions.append(self)
        }
    }
    
    // MARK: - Equatable
    
    static func == (lhs: MovableViewModel, rhs: MovableViewModel) -> Bool {
        if lhs.minion != nil {
            return lhs.minion?.identity.id == rhs.minion?.identity.id
        } else {
            return lhs.enemy?.identity.id == rhs.enemy?.identity.id
        }
    }
}
