//
//  FourthScreen.swift
//  NavigationStackTest
//
//  Created by Ricardo Bailoni on 29/08/24.
//

import SwiftUI

struct FourthView<Model>: View where Model: FourthViewModelProtocol {
    @ObservedObject var viewModel: Model
    
    var body: some View {
        VStack(spacing: 24) {
            List {
                ForEach(viewModel.coordinator.navigationPath.wrappedValue.stackPaths(), id: \.self) { path in
                    Text(path)
                }
            }
            Button("Go to First Screen") {
                viewModel.goBackTo(screen: "FirstPath")
            }
            
            Button("Go to Second Screen") {
                viewModel.goBackTo(screen: "SecondPath")
            }
            
            Button("Go to Third Screen") {
                viewModel.goBackTo(screen: "ThirdPath")
            }
            
            Button("Go to Carambola Screen") {
                viewModel.goBackTo(screen: "Carambola")
            }
        }
        .navigationTitle("Fourth Screen")
    }
}
