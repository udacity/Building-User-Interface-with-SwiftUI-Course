//
//  ContentView.swift
//  PhotoViewer
//
//  Created by Mark DiFranco on 2024-05-06.
//

import SwiftUI

struct ContentView: View {
    @GestureState private var gestureOffset: CGSize = .zero
    @GestureState private var gestureScale: CGFloat = 1
    @GestureState private var gestureRotation: Angle = .degrees(0)

    @State private var offset: CGSize = .zero
    @State private var scale: CGFloat = 1
    @State private var rotation: Angle = .degrees(0)

    var body: some View {
        VStack {
            Image(.cliffside)
                .resizable()
                .scaledToFit()
                .frame(width: 300)
                .scaleEffect(scale * gestureScale)
                .rotationEffect(rotation + gestureRotation)
                .offset(
                    x: offset.width + gestureOffset.width,
                    y: offset.height + gestureOffset.height
                )
                .simultaneousGesture(dragGesture)
                .simultaneousGesture(magnifyGesture)
                .simultaneousGesture(rotationGesture)
        }
    }

    var dragGesture: some Gesture {
        DragGesture()
            .updating($gestureOffset) { value, state, _ in
                state = value.translation
            }
            .onEnded { value in
                offset.width += value.translation.width
                offset.height += value.translation.height
            }
    }

    var magnifyGesture: some Gesture {
        MagnifyGesture()
            .updating($gestureScale) { value, state, _ in
                state = value.magnification
            }
            .onEnded { value in
                scale *= value.magnification
            }
    }

    var rotationGesture: some Gesture {
        RotateGesture()
            .updating($gestureRotation) { value, state, _ in
                state = value.rotation
            }
            .onEnded { value in
                rotation += value.rotation
            }
    }
}

#Preview {
    ContentView()
}
