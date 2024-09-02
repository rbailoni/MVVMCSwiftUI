//
//  ThirdViewModel.swift
//  NavigationStackTest
//
//  Created by Ricardo Bailoni on 01/09/24.
//

import SwiftUI

protocol ThirdViewModelProtocol: ObservableObject {
    associatedtype FirstType: View
    associatedtype SecondType: View
    associatedtype FourthType: View
    func goToFirstView() -> FirstType
    func goToSecondView() -> SecondType
    func goToFourthView() -> FourthType
}

class ThirdViewModel: ThirdViewModelProtocol {
    let coordinator: any ThirdCoordinatorProtocol
    
    init(coordinator: any ThirdCoordinatorProtocol) {
        self.coordinator = coordinator
    }
    
    func goToFirstView() -> some View {
        AnyView(coordinator.showFirstView())
    }
    
    func goToSecondView() -> some View {
        AnyView(coordinator.showSecondView())
    }
    
    func goToFourthView() -> some View {
        AnyView(coordinator.showFourthView())
    }
}
