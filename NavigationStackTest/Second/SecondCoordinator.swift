//
//  SecondCoordinator.swift
//  NavigationStackTest
//
//  Created by Ricardo Bailoni on 30/08/24.
//

import SwiftUI

protocol SecondCoordinatorProtocol: Coordinator {
    associatedtype FirstType: View
    associatedtype ThirdType: View
    associatedtype FourthType: View
    func showFirstView() -> FirstType
    func showThirdView() -> ThirdType
    func showFourthView() -> FourthType
}

final class SecondCoordinator: SecondCoordinatorProtocol {
    var navigationPath: Binding<NavigationPath>
    
    init(navigationPath: Binding<NavigationPath>) {
        self.navigationPath = navigationPath
    }
    
    @ViewBuilder
    func start() -> some View {
        let viewModel = SecondViewModel(coordinator: self)
        SecondView(viewModel: viewModel)
    }
    
    func showFirstView() -> some View {
        FirstCoordinator(navigationPath: navigationPath).start()
    }
    
    func showThirdView() -> some View {
        ThirdCoordinator(navigationPath: navigationPath).start()
    }
    
    func showFourthView() -> some View {
        FourthCoordinator(navigationPath: navigationPath).start()
    }
}
