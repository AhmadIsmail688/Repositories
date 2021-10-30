//
//  RepoCell.swift
//  Repositories
//
//  Created by Ahmad Ismail on 29/10/2021.
//

import SwiftUI

struct RepoCell: View {
    
    let viewModel: RepoCellViewModel
    
    var body: some View {
        HStack(spacing: 10) {
            AvatarImage(url: viewModel.ownerAvatarUrl, diameter: 65)
            VStack(alignment: .leading, spacing: 5) {
                VStack(alignment: .leading) {
                    Text(viewModel.name)
                        .font(.title3)
                    Text(viewModel.ownerName)
                        .font(.footnote)
                }
                if let date = viewModel.date {
                    Text(date)
                        .font(.caption)
                        .foregroundColor(.gray)
                }
            }
            Spacer()
        }
        .padding([.top, .bottom], 5)
    }
}

struct RepoCell_Previews: PreviewProvider {
    static var previews: some View {
        RepoCell(viewModel: RepoCellViewModel(repo: DummyRepo.defaultRepo))
    }
}
