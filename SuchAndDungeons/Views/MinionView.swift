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
    var minion: Minion
    
    var body: some View {
        VStack {
            Image(movableViewModel.minion?.monster.image ?? "enemy_goo")
                .scaleEffect(0.5)
                .offset(x: movableViewModel.offset.x, y: movableViewModel.offset.y)
                .animation(.linear)
                .onAppear {
                    movableViewModel.app = app
                    movableViewModel.onAppear(minion: minion)
                }
        }
    }
}

class MovableViewModel: ObservableObject, Equatable {
    
    enum Direction {
        case left, right
    }
    
    @Published var offset: CGPoint = CGPoint(x: 0, y: 0)
    var direction: Direction
    var app: AppController?
    var xCancellable: AnyCancellable?
    var yCancellable: AnyCancellable?
    var minion: Minion?
    var identity: Identity?

    init(direction: Direction) {
        self.direction = direction
        
        xCancellable = Timer.publish(every: Variables.interval, on: .main, in: .common).autoconnect()
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
    
    func onAppear(minion: Minion) {
        self.minion = minion
        self.identity = minion.identity
        doDirection()
    }
    
    func onAppear(identity: Identity) {
        self.identity = identity
        doDirection()
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
            return lhs.identity?.id == rhs.identity?.id
        }
    }
}
