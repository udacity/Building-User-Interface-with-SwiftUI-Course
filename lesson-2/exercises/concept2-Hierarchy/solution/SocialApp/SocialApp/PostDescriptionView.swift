//
//  PostDescriptionView.swift
//  SocialApp
//
//  Created by Mark DiFranco on 2024-05-04.
//

import SwiftUI

struct PostDescriptionView: View {
    let title: String
    let description: String

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(title)
                    .bold()

                Text(description)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            .multilineTextAlignment(.leading)

            Spacer()
        }
    }
}

#Preview {
    List {
        PostDescriptionView(title: "Beach Day", description: "A photo taken on our beach day.")
    }
    .listStyle(.plain)
}
