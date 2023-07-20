//
//  Extensions.swift
//  ToDoListMVVM
//
//  Created by Harun Kizilkaya on 20.07.23.
//

import Foundation

// function to return us the user as a dictionary

extension Encodable {
    func asDictionary() -> [String: Any] {
        guard let data = try? JSONEncoder().encode(self) else {
            return [:]
        }
        
        do {
            // give a JSON Object with this data
            let json = try JSONSerialization.jsonObject(with: data) as? [String: Any]
            return json ?? [:]
        } catch {
            return [:]
        }
    }
}
