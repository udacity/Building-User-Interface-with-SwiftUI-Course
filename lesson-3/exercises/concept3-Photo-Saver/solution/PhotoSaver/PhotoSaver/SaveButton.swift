//
//  SaveButton.swift
//  PhotoSaver
//
//  Created by Mark DiFranco on 2024-05-08.
//

import SwiftUI

struct SaveButton: View {
    @Binding var isSaved: Bool

    var body: some View {
        Button(action: {
            withAnimation {
                isSaved.toggle()
            }
        }, label: {
            Image(systemName: isSaved ? "star.fill" : "star")
                .imageScale(.large)
                .rotationEffect(isSaved ? .degrees(360) : .degrees(0))
                .scaleEffect(isSaved ? 1.3 : 1)
        })
        .foregroundStyle(isSaved ? .orange : .secondary)
        .animation(.bouncy(duration: 1), value: isSaved)
    }
}

private struct PreviewView: View {
    @State private var isSaved = false

    var body: some View {
        SaveButton(isSaved: $isSaved)
    }
}

#Preview {
    PreviewView()
}
