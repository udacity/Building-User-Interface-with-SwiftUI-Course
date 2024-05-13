//
//  SocialPostView.swift
//  SocialApp
//
//  Created by Mark DiFranco on 2024-05-04.
//

import SwiftUI

struct SocialPostView: View {
    @State private var isFavorite = false

    var body: some View {
        VStack {
            UserPhotoView()

            HStack {
                PostDescriptionView(
                    title: "Beach Day",
                    description: "A photo taken on our beach day."
                )
                FavoriteButton(isFavorite: $isFavorite)
            }
        }
    }
}

#Preview {
    List {
        SocialPostView()
    }
    .listStyle(.plain)
}
