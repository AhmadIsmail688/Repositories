//
//  MockReposService.swift
//  Repositories
//
//  Created by Ahmad Ismail on 30/10/2021.
//

import Foundation

class MockReposService: ReposService {
    
    var isGetReposCalled = false
    
    func getRepos() async throws -> [Repo] {
        isGetReposCalled = true
        return [DummyRepo.defaultRepo]
    }
    
}
