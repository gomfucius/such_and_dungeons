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
    
    @StateObject var movableViewModel = MovableViewModel(direction: .right)

    var body: some View {
        Image("enemy_goo")
            .offset(x: movableViewModel.offset.x, y: movableViewModel.offset.y)
            .animation(.linear)
            .onAppear {
                movableViewModel.onAppear()
            }
    }
}

class MovableViewModel: ObservableObject {
    
    enum Direction {
        case left, right
    }
    
    @Published var offset: CGPoint = CGPoint(x: 0, y: 0)
    var direction: Direction
    var xCancellable: AnyCancellable?
    var yCancellable: AnyCancellable?

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
    
    func onAppear() {
        switch direction {
        case .left:
            offset = CGPoint(x: 200, y: 0)
        case .right:
            offset = CGPoint(x: -200, y: 0)
        }
    }
}
