//
//  SecondPath.swift
//  NavigationStackTest
//
//  Created by Ricardo Bailoni on 30/08/24.
//

import Foundation

struct SecondPath: NavigationPathProtocol {
    var name: String = String(describing: SecondPath.self)
    var destination: String
}

extension SecondPath {
    static let first = SecondPath(destination: "First")
    static let third = SecondPath(destination: "Third")
    static let fourth = SecondPath(destination: "Fourth")
}
