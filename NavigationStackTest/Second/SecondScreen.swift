//
//  SecondScreen.swift
//  NavigationStackTest
//
//  Created by Ricardo Bailoni on 28/08/24.
//

import SwiftUI

struct SecondScreen: View {
    @Binding var navPath: NavigationPath
    var body: some View {
        VStack(spacing: 24) {
            NavigationLink(value: SecondPath(destination: "Third")) {
                Text("Go Third Screen")
            }
            
            NavigationLink(value: SecondPath(destination: "Fourth")) {
                Text("Go Fourth Screen")
            }
        }
        .navigationDestination(for: SecondPath.self) { pathValue in
            
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
