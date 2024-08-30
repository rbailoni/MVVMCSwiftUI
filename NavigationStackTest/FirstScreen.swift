//
//  FirstScreen.swift
//  NavigationStackTest
//
//  Created by Ricardo Bailoni on 28/08/24.
//

import SwiftUI

struct First: NavigationPathProtocol {
    var name: String = String(describing: First.self)
    var destination: String
}

struct FirstScreen: View {
    @Binding var navPath: NavigationPath
    var body: some View {
        VStack(spacing: 24) {
            NavigationLink(value: First(destination: "Second")) {
                Text("Go Second Screen")
            }

            NavigationLink(value: First(destination: "Third")) {
                Text("Go Third Screen")
            }
            
            NavigationLink(value: First(destination: "Fourth")) {
                Text("Go Fourth Screen")
            }
        }
        .navigationDestination(for: First.self) { pathValue in
            if pathValue.destination == "Second" {
                SecondScreen(navPath: $navPath)
            }
            
            if pathValue.destination == "Third" {
                ThirdScreen(navPath: $navPath)
            }
            
            if pathValue.destination == "Fourth" {
                FourthScreen(navPath: $navPath)
            }
        }
        .navigationTitle("First Screen")
    }
}
