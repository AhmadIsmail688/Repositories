//
//  RepoDetails.swift
//  Repositories
//
//  Created by Ahmad Ismail on 30/10/2021.
//

import SwiftUI

struct RepoDetails: View {
    
    let viewModel: RepoDetailsViewModel
    
    var body: some View {
        VStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 10) {
                    Link(destination: viewModel.ownerUrl) {
                        HStack {
                            AvatarImage(url: viewModel.ownerAvatarUrl, diameter: 45)
                                VStack(alignment: .leading) {
                                    Text(viewModel.ownerName)
                                        .font(.headline)
                                        .foregroundColor(Color.primary)
                                    if let date = viewModel.date {
                                        Text(date)
                                            .font(.caption)
                                            .foregroundColor(.gray)
                                    }
                            }
                            Spacer()
                        }
                    }
                    Text(viewModel.description)
                }
                .padding()
            }
            Spacer()
            Link(destination: viewModel.url) {
                Text("Open in Browser")
                    .foregroundColor(.white)
                    .frame(width: 280, height: 50, alignment: .center)
                    .background(Color.blue)
                    .cornerRadius(8)
            }
        }
        .navigationTitle(viewModel.name)
    }
}

struct RepoDetails_Previews: PreviewProvider {
    static var previews: some View {
        RepoDetails(viewModel: RepoDetailsViewModel(repo: DummyRepo.defaultRepo))
    }
}
