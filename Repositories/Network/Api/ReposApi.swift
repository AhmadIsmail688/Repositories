//
//  ReposApi.swift
//  Repositories
//
//  Created by Ahmad Ismail on 29/10/2021.
//

import Foundation

enum ReposApi {
    case getRepos
}

extension ReposApi: ApiType {
    var baseURL: String {
        return "https://api.github.com"
    }
    
    var path: String {
        switch self {
        case .getRepos: return "/repositories"
        }
    }
}
