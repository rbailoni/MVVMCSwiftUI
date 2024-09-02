//
//  ThirdFactory.swift
//  NavigationStackTest
//
//  Created by Ricardo Bailoni on 02/09/24.
//

import SwiftUI

protocol ThirdViewFactory {
    associatedtype ThirdVF: ThirdViewModelProtocol
    func makeThirdView() -> ThirdView<ThirdVF>
}

protocol ThirdViewModelFactory {
    associatedtype ThirdVMF: ThirdViewModelProtocol
    func makeThirdViewModel() -> ThirdVMF
}

protocol ThirdCoordinatorFactory {
    associatedtype ThirdCF: ThirdCoordinatorProtocol
    func makeThirdCoordinator() -> ThirdCF
}
