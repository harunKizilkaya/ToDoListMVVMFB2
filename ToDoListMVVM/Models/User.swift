//
//  User.swift
//  ToDoListMVVM
//
//  Created by Harun Kizilkaya on 20.07.23.
//

import Foundation

struct User: Codable {
    
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
