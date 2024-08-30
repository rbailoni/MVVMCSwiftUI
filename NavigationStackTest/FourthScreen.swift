//
//  FourthScreen.swift
//  NavigationStackTest
//
//  Created by Ricardo Bailoni on 29/08/24.
//

import SwiftUI

struct FourthScreen: View {
    @Binding var navPath: NavigationPath
    
    var body: some View {
        VStack(spacing: 24) {
            Button("Go to First Screen") {
                navPath.backTo(screen: "First")
            }
            
            Button("Go to Second Screen") {
                navPath.backTo(screen: "Second")
            }
            
            Button("Go to Third Screen") {
                navPath.backTo(screen: "Third")
            }
            
            Button("Go to Carambola Screen") {
                navPath.backTo(screen: "Carambola")
            }
        }
        .navigationTitle("Fourth Screen")
    }
}
