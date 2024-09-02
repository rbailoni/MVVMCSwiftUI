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
    
    func start() -> some View {
        SecondDI(navigationPath: navigationPath).makeSecondView()
    }
    
    func showFirstView() -> some View {
        FirstDI(navigationPath: navigationPath).makeFirstCoordinator().start()
    }
    
    func showThirdView() -> some View {
        ThirdDI(navigationPath: navigationPath).makeThirdCoordinator().start()
    }
    
    func showFourthView() -> some View {
        FourthDI(navigationPath: navigationPath).makeFourthCoordinator().start()
    }
}
