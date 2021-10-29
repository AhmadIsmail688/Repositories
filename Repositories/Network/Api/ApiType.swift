//
//  ApiType.swift
//  Repositories
//
//  Created by Ahmad Ismail on 29/10/2021.
//

import Foundation

protocol ApiType {
    var baseURL: String { get }
    var path: String { get }
    var url: URL {get}
}

extension ApiType {
    var url: URL {
        guard let url = URL(string: "\(baseURL)\(path)") else {
            fatalError("URL could not be configured")
        }
        return url
    }
}
