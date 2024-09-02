//
//  ThirdScreen.swift
//  NavigationStackTest
//
//  Created by Ricardo Bailoni on 28/08/24.
//

import SwiftUI

struct ThirdView: View {
    @ObservedObject var viewModel: ThirdViewModel
    
    var body: some View {
        VStack(spacing: 24) {
            NavigationLink(value: ThirdPath.first) {
                Text("Go First Screen")
            }
            
            NavigationLink(value: ThirdPath.second) {
                Text("Go Second Screen")
            }
            
            NavigationLink(value: ThirdPath.fourth) {
                Text("Go Fourth Screen")
            }
            .navigationDestination(for: ThirdPath.self) { pathValue in
                switch pathValue {
                case .first:
                    viewModel.goToFirstView()
                case .second:
                    viewModel.goToSecondView()
                case .fourth:
                    viewModel.goToFourthView()
                default:
                    EmptyView()
                }
            }
            .navigationTitle("Third Screen")
        }
    }
}
