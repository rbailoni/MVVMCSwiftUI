//
//  FirstViewModel.swift
//  NavigationStackTest
//
//  Created by Ricardo Bailoni on 31/08/24.
//

import SwiftUI

class FirstViewModel: ObservableObject {
    let coordinator: FirstCoordinator
    
    init(coordinator: FirstCoordinator) {
        self.coordinator = coordinator
    }
    
    func goToNextView(path: FirstPath) -> some View {
        coordinator.nextScreen(path: path)
    }
}
