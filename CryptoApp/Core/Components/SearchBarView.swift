//
//  SearchBarView.swift
//  CryptoApp
//
//  Created by Sergey Zakurakin on 11/16/24.
//

import SwiftUI

struct SearchBarView: View {
    
    @Binding var searchText: String
    
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundStyle(
                    searchText.isEmpty ? .secondaryText : .accent
                )
            
            TextField("Search by name or sybol...", text: $searchText)
                .foregroundStyle(.accent)
                .keyboardType(.asciiCapable)
                .autocorrectionDisabled(true)
                .overlay(
                    Image(systemName: "xmark.circle.fill")
                        .padding()
                        .offset(x: 10)
                        .foregroundStyle(.accent)
                        .opacity(searchText.isEmpty ? 0.0 : 1.0)
                        .onTapGesture {
                            UIApplication.shared.endEditing()
                            searchText = ""
                        }
                    ,alignment: .trailing
                )
            
        }
        .font(.headline)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.theme.background)
                .shadow(color: .accent, radius: 10).opacity(0.15)
        )
        .padding()
    }
}

#Preview {
    SearchBarView(searchText: .constant(""))
}
