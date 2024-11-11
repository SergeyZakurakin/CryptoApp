//
//  CoinModel.swift
//  CryptoApp
//
//  Created by Sergey Zakurakin on 11/10/24.
//

import Foundation

//MARK: - URL + API
/*
 https://api.coinlayer.com/live?access_key=e58f0c9ef23f3f2568fcde0f82c7dcb8
*/

struct CoinModel: Identifiable, Codable {
    let id, symbol, name: String
    let image: String
    let currentPrice: Double
    let marketCap, marketCapRank, fullyDilutedValuation: Double?
    let high24H, low24H, priceChange24H, priceChangePercentage24H: Double?
    let marketCapChange24H, marketCapChangePercentage24H, circulatingSupply, totalSupply: Double?
    let maxSupply: Double?
    let ath, athChangePercentage: Double?
    let athDate: String?
    let atl, atlChangePercentage: Double?
    let atlDate: String?
    let lastUpdated: String?
    let sparklineIn7D: SparklineIn7D?
    let priceChangePercentage24HInCurrency: Double?
}

struct SparklineIn7D: Codable {
    let price: [Double]
}
