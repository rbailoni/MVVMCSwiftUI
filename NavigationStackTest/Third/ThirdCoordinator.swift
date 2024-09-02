//
//  ThirdCoordinator.swift
//  NavigationStackTest
//
//  Created by Ricardo Bailoni on 30/08/24.
//

import SwiftUI

protocol ThirdCoordinatorProtocol: Coordinator {
    associatedtype FirstType: View
    associatedtype SecondType: View
    associatedtype FourthType: View
    func showFirstView() -> FirstType
    func showSecondView() -> SecondType
    func showFourthView() -> FourthType
}

final class ThirdCoordinator: ThirdCoordinatorProtocol {
    var navigationPath: Binding<NavigationPath>
    
    init(navigationPath: Binding<NavigationPath>) {
        self.navigationPath = navigationPath
    }
    
    @ViewBuilder
    func start() -> ThirdView {
        let viewModel = ThirdViewModel(coordinator: self)
        ThirdView(viewModel: viewModel)
    }
    
    func showFirstView() -> some View {
        FirstCoordinator(navigationPath: navigationPath).start()
    }
    
    func showSecondView() -> some View {
        SecondCoordinator(navigationPath: navigationPath).start()
    }
    
    func showFourthView() -> some View {
        FourthCoordinator(navigationPath: navigationPath).start()
    }
}
