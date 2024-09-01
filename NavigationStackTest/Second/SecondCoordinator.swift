//
//  SecondCoordinator.swift
//  NavigationStackTest
//
//  Created by Ricardo Bailoni on 30/08/24.
//

import SwiftUI

final class SecondCoordinator: Coordinator {
    var navigationPath: Binding<NavigationPath>
    
    init(navigationPath: Binding<NavigationPath>) {
        self.navigationPath = navigationPath
    }
    
    @ViewBuilder
    func start() -> some View {
        let viewModel = SecondViewModel(coordinator: self)
        SecondView(viewModel: viewModel)
    }
    
    @ViewBuilder
    func nextScreen(path: SecondPath) -> some View {
        switch path {
        case .first:
            FirstCoordinator(navigationPath: navigationPath).start()
        case .third:
            ThirdCoordinator(navigationPath: navigationPath).start()
        case .fourth:
            FourthCoordinator(navigationPath: navigationPath).start()
        default:
            EmptyView()
        }
    }
}
