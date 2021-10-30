//
//  RepoDetailsViewModel.swift
//  Repositories
//
//  Created by Ahmad Ismail on 30/10/2021.
//

import Foundation

class RepoDetailsViewModel {
    
    var repo: Repo
    
    init(repo: Repo) {
        self.repo = repo
    }
    
    var ownerName: String {
        repo.owner.login
    }

    var ownerAvatarUrl: URL {
        repo.owner.avatarUrl
    }
    
    var ownerUrl: URL {
        repo.owner.htmlUrl
    }
    
    var name: String {
        repo.name
    }
    
    var description: String {
        repo.description ?? ""
    }
    
    var url: URL {
        repo.htmlUrl
    }
    
    var date: String? {
        RandomDate.generate().uiFormat()
    }
    
}
