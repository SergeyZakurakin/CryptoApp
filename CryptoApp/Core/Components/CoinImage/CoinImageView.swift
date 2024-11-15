//
//  CoinImageView.swift
//  CryptoApp
//
//  Created by Sergey Zakurakin on 11/14/24.
//

import SwiftUI

class CoinImageViewModel: ObservableObject {
    
    @Published var image: UIImage? = nil
    @Published var isLoading: Bool = false
}

struct CoinImageView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    CoinImageView()
}
