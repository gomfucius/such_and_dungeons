//
//  MinionView.swift
//  SuchAndDungeons
//
//  Created by Genki Mine on 2/6/21.
//

import Combine
import Foundation
import SwiftUI

struct MinionView: View {
    
    @EnvironmentObject var app: AppController
    @StateObject var movableViewModel = MovableViewModel(direction: .right)
    var name: String
    
    var body: some View {
        VStack {
            Image("enemy_goo")
                .offset(x: movableViewModel.offset.x, y: movableViewModel.offset.y)
                .animation(.linear)
                .onAppear {
                    movableViewModel.app = app
                    movableViewModel.onAppear(name: name)
                }
        }
    }
}

class MovableViewModel: ObservableObject, Equatable {
    static func == (lhs: MovableViewModel, rhs: MovableViewModel) -> Bool {
        lhs.name == rhs.name
    }
    
    enum Direction {
        case left, right
    }
    
    @Published var offset: CGPoint = CGPoint(x: 0, y: 0)
    var direction: Direction
    var app: AppController?
    var xCancellable: AnyCancellable?
    var yCancellable: AnyCancellable?
    var name: String?

    init(direction: Direction) {
        self.direction = direction
        
        xCancellable = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
            .sink { [weak self] _ in
                self?.offset.x += self?.direction == .right ? 10 : -10
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
    
    func onAppear(name: String) {
        self.name = name
        switch direction {
        case .left:
            offset = CGPoint(x: 200, y: 0)
            app?.moveable.enemies.append(self)
        case .right:
            offset = CGPoint(x: -200, y: 0)
            app?.moveable.minions.append(self)
        }
    }
}

class MovableController {
    
    weak var app: AppController?
    var minions = [MovableViewModel]()
    var enemies = [MovableViewModel]()
    
    var cancellable: AnyCancellable?
    
    init() {
        cancellable = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
            .sink { [weak self] _ in
                guard let self = self else { return }
                
                var minionsCopy = self.minions
                for minion in self.minions {
                    for enemy in self.enemies {
                        if minion.offset.x > enemy.offset.x {
                            if let index = minionsCopy.firstIndex(of: minion) {
                                minionsCopy.remove(at: index)
                                self.app?.game.removeMinion(with: minion.name ?? "")
                                break
                            }
                        }
                    }
                }
                self.minions = minionsCopy
            }
    }
}
