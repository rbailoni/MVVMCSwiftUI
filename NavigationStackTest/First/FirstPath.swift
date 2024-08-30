//
//  FirstPath.swift
//  NavigationStackTest
//
//  Created by Ricardo Bailoni on 30/08/24.
//

import Foundation

struct FirstPath: NavigationPathProtocol {
    var name: String = String(describing: FirstPath.self)
    var destination: String
}
