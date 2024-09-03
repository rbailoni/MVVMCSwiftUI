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
    
    func start() -> some View {
        ThirdDI(navigationPath: navigationPath).makeThirdView()
    }
    
    func showFirstView() -> some View {
        FirstDI(navigationPath: navigationPath).makeFirstCoordinator().start()
    }
    
    func showSecondView() -> some View {
        SecondDI(navigationPath: navigationPath).makeSecondCoordinator().start()
    }
    
    func showFourthView() -> some View {
        FourthDI(navigationPath: navigationPath).makeFourthCoordinator().start()
    }
}
