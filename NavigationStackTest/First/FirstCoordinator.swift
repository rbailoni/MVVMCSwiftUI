//
//  FirstCoordinator.swift
//  NavigationStackTest
//
//  Created by Ricardo Bailoni on 30/08/24.
//

import SwiftUI

final class FirstCoordinator {
    @ViewBuilder
    func start() -> some View {
        FirstScreen()
    }
    
    @ViewBuilder
    func nextScreen(path: FirstPath, navigationPath: Binding<NavigationPath>) -> some View {
        switch path.destination {
        case "Second":
            SecondCoordinator(navigationPath: navigationPath).start()
        default:
            EmptyView()
        }
    }
}
