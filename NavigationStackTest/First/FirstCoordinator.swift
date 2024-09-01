//
//  FirstCoordinator.swift
//  NavigationStackTest
//
//  Created by Ricardo Bailoni on 30/08/24.
//

import SwiftUI

final class FirstCoordinator: Coordinator {
    var navigationPath: Binding<NavigationPath>
    
    init(navigationPath: Binding<NavigationPath>) {
        self.navigationPath = navigationPath
    }
    
    @ViewBuilder
    func start() -> some View {
        let viewModel = FirstViewModel(coordinator: self)
        FirstView(viewModel: viewModel)
    }
    
    @ViewBuilder
    func nextScreen(path: FirstPath) -> some View {
        switch path {
        case .second:
            SecondCoordinator(navigationPath: navigationPath).start()
        case .third:
            ThirdCoordinator(navigationPath: navigationPath).start()
        case .fourth:
            FourthCoordinator(navigationPath: navigationPath).start()
        default:
            EmptyView()
        }
    }
}
