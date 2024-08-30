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
    
    mutating func backTo(screen: String) {
        guard let index = stackPaths().lastIndex(of: screen) else {
            self.removeLast()
            return
        }
        self.removeLast(index + 1)
    }
}
