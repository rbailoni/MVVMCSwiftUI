//
//  FirstFactory.swift
//  NavigationStackTest
//
//  Created by Ricardo Bailoni on 01/09/24.
//

import SwiftUI

protocol FirstViewFactory {
    associatedtype Model: FirstViewModelProtocol
    func makeFirstView() -> FirstView<Model>
}

protocol FirstViewModelFactory {
    associatedtype FVMProtocol: FirstViewModelProtocol
    func makeFirstViewModel() -> FVMProtocol
}

protocol FirstCoordinatorFactory {
    associatedtype FCProtocol: FirstCoordinatorProtocol
    func makeFirstCoordinator() -> FCProtocol
}
