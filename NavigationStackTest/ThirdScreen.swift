//
//  ThirdScreen.swift
//  NavigationStackTest
//
//  Created by Ricardo Bailoni on 28/08/24.
//

import SwiftUI

struct Third: NavigationPathProtocol {
    var name: String = String(describing: Third.self)
    var destination: String
}

struct ThirdScreen: View {
    @Binding var navPath: NavigationPath
    var body: some View {
        NavigationLink(value: Third(destination: "Third")) {
            Text("Go Fourth Screen")
        }
        .navigationDestination(for: Third.self) { pathValue in
            if pathValue.destination == "Third" {
                FourthScreen(navPath: $navPath)
            }
        }
        .navigationTitle("Third Screen")
    }
}
