//
//  ThirdPath.swift
//  NavigationStackTest
//
//  Created by Ricardo Bailoni on 30/08/24.
//

import Foundation

struct ThirdPath: NavigationPathProtocol {
    var name: String = String(describing: ThirdPath.self)
    var destination: String
}

extension ThirdPath {
    static let first = ThirdPath(destination: "First")
    static let second = ThirdPath(destination: "Second")
    static let fourth = ThirdPath(destination: "Fourth")
}
