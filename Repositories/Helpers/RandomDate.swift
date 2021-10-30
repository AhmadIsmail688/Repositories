//
//  RandomDate.swift
//  Repositories
//
//  Created by Ahmad Ismail on 30/10/2021.
//

import Foundation

struct RandomDate {
    
    static func generate() -> Date {
        let randomDay = Int.random(in: 1..<365)
        let now = Date()
        return now - TimeInterval(randomDay * 24 * 60 * 60)
    }
    
}
