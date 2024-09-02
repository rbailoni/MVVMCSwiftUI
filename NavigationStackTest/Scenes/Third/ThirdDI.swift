//
//  ThirdDI.swift
//  NavigationStackTest
//
//  Created by Ricardo Bailoni on 02/09/24.
//

import SwiftUI

typealias ThirdFactory = ThirdViewFactory & ThirdViewModelFactory & ThirdCoordinatorFactory

struct ThirdDI: ThirdFactory {
    var navigationPath: Binding<NavigationPath>
    
    func makeThirdView() -> ThirdView<ThirdViewModel> {
        ThirdView(viewModel: self.makeThirdViewModel())
    }
    
    func makeThirdViewModel() -> ThirdViewModel {
        ThirdViewModel(coordinator: self.makeThirdCoordinator())
    }
    
    func makeThirdCoordinator() -> ThirdCoordinator {
        ThirdCoordinator(navigationPath: navigationPath)
    }
}
