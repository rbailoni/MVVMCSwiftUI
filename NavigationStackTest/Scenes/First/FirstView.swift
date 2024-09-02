//
//  FirstScreen.swift
//  NavigationStackTest
//
//  Created by Ricardo Bailoni on 28/08/24.
//

import SwiftUI

struct FirstView<Model>: View where Model: FirstViewModelProtocol {
    @ObservedObject var viewModel: Model
    
    var body: some View {
        VStack(spacing: 24) {
            NavigationLink(value: FirstPath.second) {
                Text("Go Second Screen")
            }
            
            NavigationLink(value: FirstPath.third) {
                Text("Go Third Screen")
            }
            
            NavigationLink(value: FirstPath.fourth) {
                Text("Go Fourth Screen")
            }
        }
        .navigationDestination(for: FirstPath.self) { pathValue in
            switch pathValue {
            case .second:
                viewModel.goToSecondView()
            case .third:
                viewModel.goToThirdView()
            case .fourth:
                viewModel.goToFourthView()
            default:
                EmptyView()
            }
        }
        .navigationTitle("First Screen")
    }
}
