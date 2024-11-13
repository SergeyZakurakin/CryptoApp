//
//  CoinRowView.swift
//  CryptoApp
//
//  Created by Sergey Zakurakin on 11/11/24.
//

import SwiftUI

struct CoinRowView: View {
    
    let coin: CoinModel
    let showHoldingsColumn: Bool
    
    var body: some View {
        HStack(spacing: 0) {
            leftColumn
            Spacer()
            if showHoldingsColumn {
                centralColumn
            }
            rightColumn
        }
        .font(.headline)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    Group {
        CoinRowView(coin: Preview.dev.coin, showHoldingsColumn: true)
        
        CoinRowView(coin: Preview.dev.coin, showHoldingsColumn: true)
            .colorScheme(.dark)
    }
}

extension CoinRowView {
    private var leftColumn: some View {
        HStack(spacing: 0) {
            Text("\(coin.rank)")
                .font(.caption)
                .foregroundStyle(.secondaryText)
                .frame(minWidth: 30)
            Circle()
                .frame(width: 30, height: 30)
            Text(coin.symbol.uppercased())
                .font(.headline)
                .padding(.leading, 6)
                .foregroundStyle(.accent)
        }
    }
    
    private var centralColumn: some View {
        VStack(alignment: .trailing) {
            Text(coin.currentHoldingsValue.asCurrencyWith6Decimals())
                .bold()
            Text((coin.currentHoldings ?? 0).asNumberString())
        }
        .foregroundStyle(.accent)
    }
    
    private var rightColumn: some View {
        VStack(alignment: .trailing) {
            Text(coin.currentPrice.asCurrencyWith2Decimals())
                .bold()
                .foregroundStyle(.accent)
            Text(coin.priceChangePercentage24H?.asProcentString() ?? "0")
                .foregroundStyle(
                    (coin.priceChangePercentage24H ?? 0) >= 0 ? .green : .red)
        }
        .frame(width: UIScreen.main.bounds.width / 3.5, alignment: .trailing)
        
        
    }
     
}
