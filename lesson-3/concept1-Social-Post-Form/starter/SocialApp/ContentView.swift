//
//  ContentView.swift
//  SocialApp
//
//  Created by Mark DiFranco on 2024-05-05.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        NavigationStack {
            Form {
                // Add the contents of the form here
            }
            .navigationTitle("New Post")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button("Post") { }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
