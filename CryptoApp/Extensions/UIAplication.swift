//
//  UIAplication.swift
//  CryptoApp
//
//  Created by Sergey Zakurakin on 11/16/24.
//

import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
