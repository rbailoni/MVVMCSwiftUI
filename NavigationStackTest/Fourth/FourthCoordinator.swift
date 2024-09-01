//
//  FourthCoordinator.swift
//  NavigationStackTest
//
//  Created by Ricardo Bailoni on 01/09/24.
//

import SwiftUI

final class FourthCoordinator: Coordinator {
    var navigationPath: Binding<NavigationPath>
    
    init(navigationPath: Binding<NavigationPath>) {
        self.navigationPath = navigationPath
    }
    
    @ViewBuilder
    func start() -> some View {
        let viewModel = FourthViewModel(coordinator: self)
        FourthView(viewModel: viewModel)
    }
    
    func goBackTo(screen: String) {
        navigationPath.wrappedValue.backTo(screen: screen)
    }
}

