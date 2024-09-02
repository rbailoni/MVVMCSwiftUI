//
//  FourthDI.swift
//  NavigationStackTest
//
//  Created by Ricardo Bailoni on 02/09/24.
//

import SwiftUI

typealias FourthFactory = FourthViewFactory & FourthViewModelFactory & FourthCoordinatorFactory

struct FourthDI: FourthFactory {
    var navigationPath: Binding<NavigationPath>
    
    func makeFourthView() -> FourthView<FourthViewModel> {
        FourthView(viewModel: self.makeFourthViewModel())
    }
    
    func makeFourthViewModel() -> FourthViewModel {
        FourthViewModel(coordinator: self.makeFourthCoordinator())
    }
    
    func makeFourthCoordinator() -> FourthCoordinator {
        FourthCoordinator(navigationPath: navigationPath)
    }
}
