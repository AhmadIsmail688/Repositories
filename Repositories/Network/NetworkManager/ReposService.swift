//
//  ReposService.swift
//  Repositories
//
//  Created by Ahmad Ismail on 29/10/2021.
//

import Foundation

protocol ReposService {
    func loadRepos() async throws -> [Repo]
}

extension NetworkManager: ReposService {
    func loadRepos() async throws -> [Repo] {
        let api = ReposApi.getRepos
        let (data, _) = try await URLSession.shared.data(from: api.url)
        return try JsonDecoder.default.decode([Repo].self, from: data)
    }
    
}
