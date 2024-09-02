//
//  FirstFactory.swift
//  NavigationStackTest
//
//  Created by Ricardo Bailoni on 01/09/24.
//

import SwiftUI

protocol FirstViewFactory {
    associatedtype FirstVF: FirstViewModelProtocol
    func makeFirstView() -> FirstView<FirstVF>
}

protocol FirstViewModelFactory {
    associatedtype FirstVMF: FirstViewModelProtocol
    func makeFirstViewModel() -> FirstVMF
}

protocol FirstCoordinatorFactory {
    associatedtype FirstCF: FirstCoordinatorProtocol
    func makeFirstCoordinator() -> FirstCF
}
