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
    let coordinator: ThirdCoordinator
    
    init(coordinator: ThirdCoordinator) {
        self.coordinator = coordinator
    }
    
    func goToFirstView() -> some View {
        coordinator.showFirstView()
    }
    
    func goToSecondView() -> some View {
        coordinator.showSecondView()
    }
    
    func goToFourthView() -> some View {
        coordinator.showFourthView()
    }
}
