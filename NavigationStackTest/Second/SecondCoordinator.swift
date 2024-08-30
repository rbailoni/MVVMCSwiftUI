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
        SecondScreen(navPath: navigationPath)
    }
    
    @ViewBuilder
    func nextScreen(path: SecondPath) -> some View {
        switch path.destination {
        case "Third":
            ThirdCoordinator(navigationPath: navigationPath).start()
        default:
            EmptyView()
        }
    }
}
