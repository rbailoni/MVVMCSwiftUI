//
//  NavigationPath+Extension.swift
//  NavigationStackTest
//
//  Created by Ricardo Bailoni on 29/08/24.
//

import SwiftUI

extension NavigationPath {
    func stackPaths() -> [String] {
        do {
            let regex = try NSRegularExpression(pattern:"(?<=\\\\\"name\\\\\":\\\\\")(.*?)(?=\\\\\")")
            let text = String(decoding: try JSONEncoder().encode(self.codable), as: UTF8.self)
            let results = regex.matches(in: text, range: NSRange(text.startIndex..., in: text))
            return results.map {
                String(text[Range($0.range, in: text)!])
            }
        } catch let error {
            print("invalid regex: \(error.localizedDescription)")
            return []
        }
    }
    
    mutating func backTo(screen: String, onFailure: OnFailureDestination = .previous) {
        guard let index = stackPaths().firstIndex(of: screen) else {
            switch onFailure {
            case .previous:
                self.removeLast()
            case .root:
                self.removeLast(self.count)
            }
            return
        }
        self.removeLast(index + 1)
    }
    
    mutating func backToFirst(screen: String, onFailure: OnFailureDestination = .previous) {
        guard let index = stackPaths().lastIndex(of: screen) else {
            switch onFailure {
            case .root:
                self.removeLast()
            case .previous:
                self.removeLast(self.count)
            }
            return
        }
        self.removeLast(index + 1)
    }
    
}

enum OnFailureDestination {
    case root
    case previous
}
