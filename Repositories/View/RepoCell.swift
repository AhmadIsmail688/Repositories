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
            AsyncImage(url: viewModel.ownerAvatarUrl) { image in
                image.resizable()
            } placeholder: {
                Image(systemName: "person.circle.fill").resizable()
                    .foregroundColor(.gray)
            }
            .aspectRatio(contentMode: .fit)
            .frame(width: 65, height: 65, alignment: .center)
            .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 5) {
                VStack(alignment: .leading, spacing: 0) {
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
