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
            List {
                ForEach(navPath.stackPaths(), id: \.self) { path in
                    Text(path)
                }
            }
            Button("Go to First Screen") {
                navPath.backTo(screen: "FirstPath")
            }
            
            Button("Go to Second Screen") {
                navPath.backTo(screen: "SecondPath")
            }
            
            Button("Go to Third Screen") {
                navPath.backTo(screen: "ThirdPath")
            }
            
            Button("Go to Carambola Screen") {
                navPath.backTo(screen: "Carambola")
            }
        }
        .navigationTitle("Fourth Screen")
    }
}
