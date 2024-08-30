//
//  AppCoordinator.swift
//  NavigationStackTest
//
//  Created by Ricardo Bailoni on 30/08/24.
//

import SwiftUI

struct AppCoordinator {
    @ViewBuilder
    func start() -> some View {
        FirstCoordinator().start()
    }
}
