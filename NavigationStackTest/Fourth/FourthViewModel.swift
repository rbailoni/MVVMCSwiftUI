//
//  FourthViewModel.swift
//  NavigationStackTest
//
//  Created by Ricardo Bailoni on 01/09/24.
//

import SwiftUI

class FourthViewModel: ObservableObject {
    let coordinator: FourthCoordinator
    
    init(coordinator: FourthCoordinator) {
        self.coordinator = coordinator
    }
    
    func goBackTo(screen: String) {
        coordinator.goBackTo(screen: screen)
    }
}

