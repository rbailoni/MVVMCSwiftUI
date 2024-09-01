//
//  ThirdCoordinator.swift
//  NavigationStackTest
//
//  Created by Ricardo Bailoni on 30/08/24.
//

import SwiftUI

final class ThirdCoordinator: Coordinator {
    var navigationPath: Binding<NavigationPath>
    
    init(navigationPath: Binding<NavigationPath>) {
        self.navigationPath = navigationPath
    }
    
    @ViewBuilder
    func start() -> some View {
        let viewModel = ThirdViewModel(coordinator: self)
        ThirdView(viewModel: viewModel)
    }
    
    @ViewBuilder
    func nextScreen(path: ThirdPath) -> some View {
        switch path {
        case .first:
            FirstCoordinator(navigationPath: navigationPath).start()
        case .second:
            SecondCoordinator(navigationPath: navigationPath).start()
        case .fourth:
            FourthCoordinator(navigationPath: navigationPath).start()
        default:
            EmptyView()
        }
    }
}
