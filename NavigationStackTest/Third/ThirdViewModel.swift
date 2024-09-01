//
//  ThirdViewModel.swift
//  NavigationStackTest
//
//  Created by Ricardo Bailoni on 01/09/24.
//

import SwiftUI

class ThirdViewModel: ObservableObject {
    let coordinator: ThirdCoordinator
    
    init(coordinator: ThirdCoordinator) {
        self.coordinator = coordinator
    }
    
    func goToNextView(path: ThirdPath) -> some View {
        coordinator.nextScreen(path: path)
    }
}
