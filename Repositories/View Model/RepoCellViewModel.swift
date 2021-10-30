//
//  RepoCellViewModel.swift
//  Repositories
//
//  Created by Ahmad Ismail on 30/10/2021.
//

import Foundation

class RepoCellViewModel: Identifiable {
    
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
    
    var name: String {
        repo.fullName
    }
    
    var date: String? {
        RandomDate.generate().uiFormat()
    }
    
    
}
