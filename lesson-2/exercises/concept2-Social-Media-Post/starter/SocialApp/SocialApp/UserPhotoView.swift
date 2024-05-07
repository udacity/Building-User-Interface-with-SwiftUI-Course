//
//  UserPhotoView.swift
//  SocialApp
//
//  Created by Mark DiFranco on 2024-05-04.
//

import SwiftUI

/// A component that displays a user's photo in a square frame, ensuring the photo fills the space.
/// It defaults to using an image of the beach. The original can be found here: https://unsplash.com/photos/green-leafed-plant-uKs8UvWv6N0
struct UserPhotoView: View {
    let imageResource: ImageResource

    init(imageResource: ImageResource = .beach) {
        self.imageResource = imageResource
    }

    var body: some View {
        GeometryReader { proxy in
            Image(imageResource)
                .resizable()
                .scaledToFill()
                .frame(
                    width: proxy.size.width,
                    height: proxy.size.width
                )
                .clipped()
        }
        .scaledToFit()
    }
}

#Preview {
    UserPhotoView()
        .padding()
}
