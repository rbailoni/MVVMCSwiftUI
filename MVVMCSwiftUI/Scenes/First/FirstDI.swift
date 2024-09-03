//
//  FirstDI.swift
//  NavigationStackTest
//
//  Created by Ricardo Bailoni on 01/09/24.
//

import SwiftUI

typealias FirstFactory = FirstViewFactory & FirstViewModelFactory & FirstCoordinatorFactory

struct FirstDI: FirstFactory {
    var navigationPath: Binding<NavigationPath>
    
    func makeFirstView() -> FirstView<FirstViewModel> {
        FirstView(viewModel: self.makeFirstViewModel())
    }
    
    func makeFirstViewModel() -> FirstViewModel {
        FirstViewModel(coordinator: self.makeFirstCoordinator())
    }
    
    func makeFirstCoordinator() -> FirstCoordinator {
        FirstCoordinator(navigationPath: navigationPath)
    }
}
