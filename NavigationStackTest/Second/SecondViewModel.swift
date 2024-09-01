//
//  SecondViewModel.swift
//  NavigationStackTest
//
//  Created by Ricardo Bailoni on 01/09/24.
//

import SwiftUI

class SecondViewModel: ObservableObject {
    let coordinator: SecondCoordinator
    
    init(coordinator: SecondCoordinator) {
        self.coordinator = coordinator
    }
    
    func goToNextView(path: SecondPath) -> some View {
        coordinator.nextScreen(path: path)
    }
}
