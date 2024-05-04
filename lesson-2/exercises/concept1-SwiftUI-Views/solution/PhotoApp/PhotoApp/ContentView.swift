//
//  ContentView.swift
//  PhotoApp
//
//  Created by Mark DiFranco on 2024-05-03.
//

import SwiftUI

struct ContentView: View {

    @State private var email = ""
    @State private var password = ""

    @State private var authenticationState = ""

    var body: some View {
        VStack {
            Image(systemName: "person.circle")
                .imageScale(.large)
                .foregroundStyle(.tint)

            Text(authenticationState)

            TextField("Email", text: $email, prompt: Text("Email"))
                .textFieldStyle(.roundedBorder)

            TextField("Password", text: $password, prompt: Text("Password"))
                .textFieldStyle(.roundedBorder)

            Button("Sign In") {
                verifyCredentials()
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }

    func verifyCredentials() {
        if email == "example@udacity.com" && password == "password123" {
            authenticationState = "Authenticated!"
        } else {
            authenticationState = "Email or Password Incorrect"
        }
    }
}

#Preview {
    ContentView()
}
