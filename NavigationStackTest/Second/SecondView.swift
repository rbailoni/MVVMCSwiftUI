//
//  SecondScreen.swift
//  NavigationStackTest
//
//  Created by Ricardo Bailoni on 28/08/24.
//

import SwiftUI

struct SecondView: View {
    @ObservedObject var viewModel: SecondViewModel
    
    var body: some View {
        VStack(spacing: 24) {
            NavigationLink(value: SecondPath.first) {
                Text("Go First Screen")
            }
            
            NavigationLink(value: SecondPath.third) {
                Text("Go Third Screen")
            }
            
            NavigationLink(value: SecondPath.fourth) {
                Text("Go Fourth Screen")
            }
        }
        .navigationDestination(for: SecondPath.self) { pathValue in
            viewModel.goToNextView(path: pathValue)
        }
        .navigationTitle("Second Screen")
    }
}
