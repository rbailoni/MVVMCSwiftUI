//
//  FourthViewModel.swift
//  NavigationStackTest
//
//  Created by Ricardo Bailoni on 01/09/24.
//

import SwiftUI

protocol FourthViewModelProtocol: ObservableObject {
    var coordinator: FourthCoordinator { get }
    func goBackTo(screen: String)
}

class FourthViewModel: FourthViewModelProtocol {
    let coordinator: FourthCoordinator
    
    init(coordinator: FourthCoordinator) {
        self.coordinator = coordinator
    }
    
    func goBackTo(screen: String) {
        coordinator.goBackTo(screen: screen)
    }
}

