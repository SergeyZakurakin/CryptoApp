//
//  ContentView.swift
//  CryptoApp
//
//  Created by Sergey Zakurakin on 11/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            
            VStack(spacing: 40) {
                Text("Accent Color")
                    .foregroundStyle(Color.theme.accent)
                
                Text("Secondary Text Color")
                    .foregroundStyle(Color.theme.secondaryText)
                
                Text("Red Color")
                    .foregroundStyle(Color.theme.specialRed)
                
                Text("Green Color")
                    .foregroundStyle(Color.theme.specialGreen)
            }
            .font(.headline )
        }
    }
}

#Preview {
    ContentView()
}
