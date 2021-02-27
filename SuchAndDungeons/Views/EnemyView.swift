//
//  EnemyView.swift
//  SuchAndDungeons
//
//  Created by Genki Mine on 2/7/21.
//

import Foundation
import SwiftUI

struct EnemyView: View {
    
    @EnvironmentObject var app: AppController
    @StateObject var movableViewModel = MovableViewModel(direction: .left)
    var enemy: Enemy
    
    var body: some View {
        CharacterView(movableViewModel: movableViewModel)
            .offset(x: movableViewModel.offset.x, y: movableViewModel.offset.y)
            .onAppear {
                movableViewModel.app = app
                movableViewModel.onAppear(suchUnit: enemy)
            }
    }
}

struct CharacterView: View {
    
    @StateObject var movableViewModel: MovableViewModel

    var body: some View {
        ZStack {
            Text("🧙‍♂️")
                .font(.title)
                .animation(.linear)
            if movableViewModel.suchUnit?.isHealthBarHidden == false{
                HealthBar(movableViewModel: movableViewModel)
                    .animation(.linear)
            }
        }
    }
}

struct HealthBar: View {
    
    @StateObject var movableViewModel: MovableViewModel
    let width: CGFloat = 40
    let height: CGFloat = 4
    let foregroundWidth: CGFloat = 38
    let yOffset: CGFloat = 20

    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.black)
                .border(Color.white, width: 1)
                .frame(width: width, height: height)
                .offset(x: 0, y: yOffset)
            Rectangle()
                .foregroundColor(.green)
                .frame(width: CGFloat(foregroundWidth * (CGFloat(movableViewModel.suchUnit?.hpPercent ?? 1))), height: height / 2)
                .offset(x: -(foregroundWidth / 2 - CGFloat(foregroundWidth * (CGFloat(movableViewModel.suchUnit?.hpPercent ?? 1) / 2))), y: yOffset) // Because there's no anchor for frame
        }
    }
}
