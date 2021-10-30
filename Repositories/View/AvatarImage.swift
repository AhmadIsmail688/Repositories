//
//  UserImage.swift
//  Repositories
//
//  Created by Ahmad Ismail on 30/10/2021.
//

import SwiftUI

struct AvatarImage: View {
    
    let url: URL
    let diameter: CGFloat
    
    var body: some View {
        AsyncImage(url: url) { image in
            image.resizable()
        } placeholder: {
            Image(systemName: "person.circle.fill").resizable()
                .foregroundColor(.gray)
        }
        .aspectRatio(contentMode: .fit)
        .frame(width: diameter, height: diameter, alignment: .center)
        .clipShape(Circle())
    }
}

struct UserImage_Previews: PreviewProvider {
    static var previews: some View {
        AvatarImage(url: DummyRepo.defaultOwner.avatarUrl, diameter: 200)
    }
}
