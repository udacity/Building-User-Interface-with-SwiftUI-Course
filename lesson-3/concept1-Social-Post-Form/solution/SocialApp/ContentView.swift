//
//  ContentView.swift
//  SocialApp
//
//  Created by Mark DiFranco on 2024-05-05.
//

import SwiftUI

struct ContentView: View {
    @State private var title = ""
    @State private var description = ""
    @State private var accentColor = Color.blue
    @State private var shareWithEveryone = false

    var body: some View {
        NavigationStack {
            Form {
                Section("Details") {
                    TextField(
                        "Title",
                        text: $title,
                        prompt: Text("Title")
                    )
                    TextField(
                        "Description",
                        text: $description,
                        prompt: Text("Description")
                    )
                }

                Section("Theme") {
                    ColorPicker("Accent Color", selection: $accentColor)
                }

                Section("Visibility") {
                    Toggle("Share with Everyone", isOn: $shareWithEveryone)
                }
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
