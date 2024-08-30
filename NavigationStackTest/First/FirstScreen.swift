//
//  FirstScreen.swift
//  NavigationStackTest
//
//  Created by Ricardo Bailoni on 28/08/24.
//

import SwiftUI



struct FirstScreen: View {
    @State var navPath: NavigationPath = .init()
    var coordinator = FirstCoordinator()
    var body: some View {
        NavigationStack(path: $navPath) {
            VStack(spacing: 24) {
                NavigationLink(value: FirstPath(destination: "Second")) {
                    Text("Go Second Screen")
                }
                
                NavigationLink(value: FirstPath(destination: "Third")) {
                    Text("Go Third Screen")
                }
                
                NavigationLink(value: FirstPath(destination: "Fourth")) {
                    Text("Go Fourth Screen")
                }
            }
            .navigationDestination(for: FirstPath.self) { pathValue in
//                if pathValue.destination == "Second" {
//                    SecondScreen(navPath: $navPath)
                coordinator.nextScreen(path: pathValue, navigationPath: $navPath)
//                }
//                
//                if pathValue.destination == "Third" {
//                    ThirdScreen(navPath: $navPath)
//                }
//                
//                if pathValue.destination == "Fourth" {
//                    FourthScreen(navPath: $navPath)
//                }
            }
            .navigationTitle("First Screen")
        }
    }
}
