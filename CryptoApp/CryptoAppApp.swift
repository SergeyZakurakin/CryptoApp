//
//  CryptoAppApp.swift
//  CryptoApp
//
//  Created by Sergey Zakurakin on 11/10/24.
//

import SwiftUI

@main
struct CryptoAppApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .toolbar(.hidden)
            }
        }
    }
}
