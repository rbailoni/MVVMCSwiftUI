//
//  SecondDI.swift
//  NavigationStackTest
//
//  Created by Ricardo Bailoni on 02/09/24.
//

import SwiftUI

typealias SecondFactory = SecondViewFactory & SecondViewModelFactory & SecondCoordinatorFactory

struct SecondDI: SecondFactory {
    var navigationPath: Binding<NavigationPath>
    
    func makeSecondView() -> SecondView<SecondViewModel> {
        SecondView(viewModel: self.makeSecondViewModel())
    }
    
    func makeSecondViewModel() -> SecondViewModel {
        SecondViewModel(coordinator: self.makeSecondCoordinator())
    }
    
    func makeSecondCoordinator() -> SecondCoordinator {
        SecondCoordinator(navigationPath: navigationPath)
    }
}
