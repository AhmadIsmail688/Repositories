//
//  DummyRepo.swift
//  Repositories
//
//  Created by Ahmad Ismail on 29/10/2021.
//

import Foundation

struct DummyRepo {
    
    static let defaultOwner = RepoOwner(
        login: "mojombo",
        avatarUrl: URL(string: "https://avatars.githubusercontent.com/u/1?v=4")!,
        htmlUrl: URL(string: "https://github.com/mojombo")!,
        type: .user
    )
    
    static let defaultRepo = Repo(
        name: "grit",
        fullName: "mojombo/grit",
        owner: defaultOwner,
        htmlUrl: URL(string: "https://github.com/mojombo/grit")!,
        description: "**Grit is no longer maintained. Check out libgit2/rugged.** Grit gives you object oriented read/write access to Git repositories via Ruby."
    )

}
