//
//  ReposListViewModel.swift
//  Repositories
//
//  Created by Ahmad Ismail on 30/10/2021.
//

import Foundation

@MainActor class ReposListViewModel: ObservableObject {
    
    @Published var repos = [Repo]()
    @Published var error: Error?
    
    @Published var searchText = ""
    
    var reposService: ReposService
    
    fileprivate var repoCells: [RepoCellViewModel] {
        repos.map{RepoCellViewModel(repo: $0)}
    }
    
    var searchResults: [RepoCellViewModel] {
        if searchText.count < 2 {
            return repoCells
        } else {
            return repoCells.filter {
                $0.name.lowercased().contains(searchText.lowercased())
            }
        }
    }
        
    init(reposService: ReposService = NetworkManager.shared) {
        self.reposService = reposService
        Task{ await getRepos() }
    }
    
    init(repos: [Repo]) {
        self.reposService = NetworkManager.shared
        self.repos = repos
    }
    
    func getRepos() async {
        do {
            repos = try await reposService.getRepos()
        } catch {
            self.error = error
        }
    }
    
    
}
