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
