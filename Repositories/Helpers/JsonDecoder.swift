//
//  JsonDecoder.swift
//  Repositories
//
//  Created by Ahmad Ismail on 29/10/2021.
//

import Foundation

struct JsonDecoder {
    static let `default`: JSONDecoder = {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return decoder
    }()
}
