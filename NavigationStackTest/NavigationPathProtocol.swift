//
//  NavigationPathProtocol.swift
//  NavigationStackTest
//
//  Created by Ricardo Bailoni on 29/08/24.
//

import Foundation

protocol NavigationPathProtocol: Identifiable, Hashable, Codable {
    var id: UUID { get }
    var name: String { get }
    var destination: String { get }
}

extension NavigationPathProtocol {
    var id: UUID {
        UUID()
    }
}
