//
//  Coordinator.swift
//  NavigationStackTest
//
//  Created by Ricardo Bailoni on 30/08/24.
//

import SwiftUI

protocol Coordinator {
    var navigationPath: Binding<NavigationPath> { get }
    associatedtype V: View
    func start() -> V
}
