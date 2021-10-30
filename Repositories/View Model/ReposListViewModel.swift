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
    
    var repoCells: [RepoCellViewModel] {
        repos.map{RepoCellViewModel(repo: $0)}
    }
    
    init() {
        Task{ await getRepos() }
    }
    
    init(repos: [Repo]) {
        self.repos = repos
    }
    
    func getRepos() async {
        do {
            repos = try await NetworkManager.shared.getRepos()
        } catch {
            self.error = error
        }
    }
    
    
}
