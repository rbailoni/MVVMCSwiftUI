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
    let coordinator: any FirstCoordinatorProtocol
    
    init(coordinator: any FirstCoordinatorProtocol) {
        self.coordinator = coordinator
    }
    
    func goToSecondView() -> some View {
        AnyView(coordinator.showSecondView())
    }
    
    func goToThirdView() -> some View {
        AnyView(coordinator.showThirdView())
    }
    
    func goToFourthView() -> some View {
        AnyView(coordinator.showFourthView())
    }
}
