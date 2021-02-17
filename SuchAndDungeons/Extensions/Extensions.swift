//
//  Extensions.swift
//  SuchAndDungeons
//
//  Created by Genki Mine on 2/16/21.
//

import Foundation

extension Notification {
    
    static let intervalDidChange = "intervalDidChange".notificationName
    
}

extension String {
    
    var notificationName: Notification.Name { Notification.Name(rawValue: self) }
    
}
