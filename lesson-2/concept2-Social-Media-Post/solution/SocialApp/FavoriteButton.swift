//
//  FavoriteButton.swift
//  SocialApp
//
//  Created by Mark DiFranco on 2024-05-04.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isFavorite: Bool

    var body: some View {
        Button(action: {
            isFavorite.toggle()
        }, label: {
            Image(systemName: "heart")
                .symbolVariant(isFavorite ? .fill : .none)
                .imageScale(.large)
                .foregroundStyle(.red)
        })
        .buttonStyle(.plain)
    }
}

#Preview {
    VStack {
        FavoriteButton(isFavorite: .constant(true))
        FavoriteButton(isFavorite: .constant(false))
    }
}
