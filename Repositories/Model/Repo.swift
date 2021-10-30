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
    let fullName: String
    let owner: RepoOwner
    let htmlUrl: URL
    let description: String?
}

struct RepoOwner: Decodable {
    let login: String
    let avatarUrl: URL
    let htmlUrl: URL
    let type: OwnerType
}
