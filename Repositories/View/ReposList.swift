//
//  ReposList.swift
//  Repositories
//
//  Created by Ahmad Ismail on 30/10/2021.
//

import SwiftUI

struct ReposList: View {
    
    @ObservedObject var viewModel = ReposListViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.repoCells) { cellViewModel in
                RepoCell(viewModel: cellViewModel)
            }
            .navigationTitle("Repositories")
        }
    }
}

struct ReposList_Previews: PreviewProvider {
    static var previews: some View {
        ReposList(viewModel: ReposListViewModel(repos: [DummyRepo.defaultRepo]))
    }
}
