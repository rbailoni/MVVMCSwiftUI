//
//  SecondViewModel.swift
//  NavigationStackTest
//
//  Created by Ricardo Bailoni on 01/09/24.
//

import SwiftUI

protocol SecondViewModelProtocol: ObservableObject {
    associatedtype FirstType: View
    associatedtype ThirdType: View
    associatedtype FourthType: View
    func goToFirstView() -> FirstType
    func goToThirdView() -> ThirdType
    func goToFourthView() -> FourthType
}

class SecondViewModel: SecondViewModelProtocol {
    let coordinator: any SecondCoordinatorProtocol
    
    init(coordinator: any SecondCoordinatorProtocol) {
        self.coordinator = coordinator
    }
    
    func goToFirstView() -> some View {
        AnyView(coordinator.showFirstView())
    }
    
    func goToThirdView() -> some View {
        AnyView(coordinator.showThirdView())
    }
    
    func goToFourthView() -> some View {
        AnyView(coordinator.showFourthView())
    }
}
