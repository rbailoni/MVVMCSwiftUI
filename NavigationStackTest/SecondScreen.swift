//
//  SecondScreen.swift
//  NavigationStackTest
//
//  Created by Ricardo Bailoni on 28/08/24.
//

import SwiftUI

struct Second: NavigationPathProtocol {
    var name: String = String(describing: Second.self)
    var destination: String
}

struct SecondScreen: View {
    @Binding var navPath: NavigationPath
    var body: some View {
        VStack(spacing: 24) {
            NavigationLink(value: Second(destination: "Third")) {
                Text("Go Third Screen")
            }
            
            NavigationLink(value: Second(destination: "Fourth")) {
                Text("Go Fourth Screen")
            }
        }
        .navigationDestination(for: Second.self) { pathValue in
            if pathValue.destination == "Third" {
                ThirdScreen(navPath: $navPath)
            }
            
            if pathValue.destination == "Fourth" {
                FourthScreen(navPath: $navPath)
            }
        }
        .navigationTitle("Second Screen")
    }
}
