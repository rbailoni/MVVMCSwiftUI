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
        remove(index: stackPaths().firstIndex(of: screen), onFailure: onFailure)
    }
    
    mutating func backToFirst(screen: String, onFailure: OnFailureDestination = .previous) {
        remove(index: stackPaths().lastIndex(of: screen), onFailure: onFailure)
    }
    
    
    private mutating func remove(index: Int?, onFailure: OnFailureDestination) {
        guard let index else {
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
}

enum OnFailureDestination {
    case root
    case previous
}
