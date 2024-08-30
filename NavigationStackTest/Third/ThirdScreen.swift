//
//  ThirdScreen.swift
//  NavigationStackTest
//
//  Created by Ricardo Bailoni on 28/08/24.
//

import SwiftUI

struct ThirdScreen: View {
    @Binding var navPath: NavigationPath
    
    var body: some View {
        NavigationLink(value: ThirdPath(destination: "Third")) {
            Text("Go Fourth Screen")
        }
        .navigationDestination(for: ThirdPath.self) { pathValue in
            
            if pathValue.destination == "Third" {
                FourthScreen(navPath: $navPath)
            }
        }
        .navigationTitle("Third Screen")
    }
}
