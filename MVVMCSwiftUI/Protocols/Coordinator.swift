//
//  Coordinator.swift
//  NavigationStackTest
//
//  Created by Ricardo Bailoni on 30/08/24.
//

import SwiftUI

protocol Coordinator: AnyObject {
    var navigationPath: Binding<NavigationPath> { get }
    associatedtype V: View
    func start() -> V
}

protocol ParentCoordinator: Coordinator {
    var childCoordinators: [any Coordinator] { get set }
    func addChild(_ child: (any Coordinator)?)
    func childDidFinish(_ child: (any Coordinator)?)
}

extension ParentCoordinator {
    func addChild(_ child: (any Coordinator)?) {
        if let child {
            childCoordinators.append(child)
        }
    }
    
    func childDidFinish(_ child: (any Coordinator)?) {
        for (index, coordinator) in childCoordinators.enumerated() {
            if coordinator === child {
                childCoordinators.remove(at: index)
                break
            }
        }
    }
}
