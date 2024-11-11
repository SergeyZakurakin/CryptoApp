//
//  Color.swift
//  CryptoApp
//
//  Created by Sergey Zakurakin on 11/10/24.
//

import Foundation
import SwiftUI

extension Color {
    static let theme = ColorTheme()
    
}

struct ColorTheme {
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let specialGreen = Color("SpecialGreen")
    let specialRed = Color("SpecialRed")
    let secondaryText = Color("SecondaryTextColor")
}
