//
//  FourthFactory.swift
//  NavigationStackTest
//
//  Created by Ricardo Bailoni on 02/09/24.
//

import SwiftUI

protocol FourthViewFactory {
    associatedtype FourthVF: FourthViewModelProtocol
    func makeFourthView() -> FourthView<FourthVF>
}

protocol FourthViewModelFactory {
    associatedtype FourthVMF: FourthViewModelProtocol
    func makeFourthViewModel() -> FourthVMF
}

protocol FourthCoordinatorFactory {
    associatedtype FourthCF: FourthCoordinatorProtocol
    func makeFourthCoordinator() -> FourthCF
}
