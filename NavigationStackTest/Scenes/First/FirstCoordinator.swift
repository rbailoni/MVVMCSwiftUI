//
//  FirstCoordinator.swift
//  NavigationStackTest
//
//  Created by Ricardo Bailoni on 30/08/24.
//

import SwiftUI

protocol FirstCoordinatorProtocol: Coordinator {
    associatedtype SecondType: View
    associatedtype ThirdType: View
    associatedtype FourthType: View
    func showSecondView() -> SecondType
    func showThirdView() -> ThirdType
    func showFourthView() -> FourthType
}

final class FirstCoordinator: FirstCoordinatorProtocol {
    var navigationPath: Binding<NavigationPath>
    
    init(navigationPath: Binding<NavigationPath>) {
        self.navigationPath = navigationPath
    }
    
    func start() -> some View {
        FirstDI(navigationPath: navigationPath).makeFirstView()
    }
    
    func showSecondView() -> some View {
        SecondDI(navigationPath: navigationPath).makeSecondCoordinator().start()
    }
    
    func showThirdView() -> some View {
        ThirdDI(navigationPath: navigationPath).makeThirdCoordinator().start()
    }
    
    func showFourthView() -> some View {
        FourthDI(navigationPath: navigationPath).makeFourthCoordinator().start()
    }
}
