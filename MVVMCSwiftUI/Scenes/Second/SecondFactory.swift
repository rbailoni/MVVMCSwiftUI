//
//  SecondFactory.swift
//  NavigationStackTest
//
//  Created by Ricardo Bailoni on 02/09/24.
//

import SwiftUI

protocol SecondViewFactory {
    associatedtype SecondVF: SecondViewModelProtocol
    func makeSecondView() -> SecondView<SecondVF>
}

protocol SecondViewModelFactory {
    associatedtype SecondVMF: SecondViewModelProtocol
    func makeSecondViewModel() -> SecondVMF
}

protocol SecondCoordinatorFactory {
    associatedtype SecondCF: SecondCoordinatorProtocol
    func makeSecondCoordinator() -> SecondCF
}
