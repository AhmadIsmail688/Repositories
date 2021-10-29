//
//  Repo.swift
//  Repositories
//
//  Created by Ahmad Ismail on 29/10/2021.
//

import Foundation

enum OwnerType: String, Decodable {
    case user = "User"
    case organization = "Organization"
}

struct Repo: Decodable {
    var fullName: String
    var owner: RepoOwner
    var htmlUrl: URL
    var description: String
}

struct RepoOwner: Decodable {
    var login: String
    var avatarUrl: URL
    var htmlUrl: URL
    var type: OwnerType
}
