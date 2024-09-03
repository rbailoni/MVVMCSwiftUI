//
//  ContentView.swift
//  NavigationStackTest
//
//  Created by Ricardo Bailoni on 28/08/24.
//

import SwiftUI

struct ContentView: View {
    @State private var navPath: NavigationPath = .init()
//    @State private var navPath: [String] = []
    var body: some View {
        NavigationStack(path: $navPath) {
            AppCoordinator().start()
        }
    }
}

#Preview {
    ContentView()
}
