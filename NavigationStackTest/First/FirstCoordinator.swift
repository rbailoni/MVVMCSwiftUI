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
    
    @ViewBuilder
    func start() -> FirstView<FirstViewModel> {
        let firstDI = FirstDI(navigationPath: navigationPath)
        firstDI.makeFirstView()
    }
    
    func showSecondView() -> some View {
        SecondCoordinator(navigationPath: navigationPath).start()
    }
    
    func showThirdView() -> some View {
        ThirdCoordinator(navigationPath: navigationPath).start()
    }
    
    func showFourthView() -> some View {
        FourthCoordinator(navigationPath: navigationPath).start()
    }
}
