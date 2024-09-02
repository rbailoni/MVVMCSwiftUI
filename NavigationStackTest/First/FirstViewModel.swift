//
//  FirstViewModel.swift
//  NavigationStackTest
//
//  Created by Ricardo Bailoni on 31/08/24.
//

import SwiftUI

protocol FirstViewModelProtocol: ObservableObject {
    associatedtype SecondType: View
    associatedtype ThirdType: View
    associatedtype FourthType: View
    func goToSecondView() -> SecondType
    func goToThirdView() -> ThirdType
    func goToFourthView() -> FourthType
}

class FirstViewModel: FirstViewModelProtocol {
    let coordinator: FirstCoordinator
    
    init(coordinator: FirstCoordinator) {
        self.coordinator = coordinator
    }
    
    func goToSecondView() -> some View {
        coordinator.showSecondView()
    }
    
    func goToThirdView() -> some View {
        coordinator.showThirdView()
    }
    
    func goToFourthView() -> some View {
        coordinator.showFourthView()
    }
}
