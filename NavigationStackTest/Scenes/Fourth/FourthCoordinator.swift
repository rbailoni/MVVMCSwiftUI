//
//  FourthCoordinator.swift
//  NavigationStackTest
//
//  Created by Ricardo Bailoni on 01/09/24.
//

import SwiftUI

protocol FourthCoordinatorProtocol: Coordinator {
    func goBackTo(screen: String)
}

final class FourthCoordinator: FourthCoordinatorProtocol {
    var navigationPath: Binding<NavigationPath>
    
    init(navigationPath: Binding<NavigationPath>) {
        self.navigationPath = navigationPath
    }
    
    func start() -> some View {
        FourthDI(navigationPath: navigationPath).makeFourthView()
    }
    
    func goBackTo(screen: String) {
        navigationPath.wrappedValue.backTo(screen: screen)
    }
}

