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
