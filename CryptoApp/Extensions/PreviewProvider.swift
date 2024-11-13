//
//  PreviewProvider.swift
//  CryptoApp
//
//  Created by Sergey Zakurakin on 11/11/24.
//

import SwiftUI

extension Preview {
    
    static var dev: DeveloperPreview {
        return DeveloperPreview.shared
        
    }
}

class DeveloperPreview {
    
    static let shared = DeveloperPreview()
    private init() {}
    
    let coin = CoinModel(
        id: "bitcoin",
        symbol: "btc",
        name: "Bitcoin",
        image: "https//assetscoingecko.com/coins/images/1/large/bitcoin.png?1547033579",
        currentPrice: 81408,
        marketCap: 1141731099010,
        marketCapRank: 1,
        fullyDilutedValuation: 1285385611303,
        totalVolume: 67190952980,
        high24H: 81712,
        low24H: 76220,
        priceChange24H: 3952.64,
        priceChangePercentage24H: 6.87944,
        marketCapChange24H: 72110681879,
        marketCapChangePercentage24H: 6.74171,
        circulatingSupply: 18653043,
        totalSupply: 21000000,
        maxSupply: 21000000,
        ath: 61712,
        athChangePercentage: -0.97589,
        athDate: "2024-11-13T20:49:26.606Z",
        atl: 67.81,
        atlChangePercentage: 90020.24075,
        atlDate: "2013-07-06T00:00:00.000Z",
        lastUpdated: "2024-11-13T23:18:10.268Z",
        sparklineIn7D: SparklineIn7D(price: [
            80408.6170881948,
            81408.7170844958,
            81568.8194844958,
            81681.3170881948,
            81768.8194871708,
            81798.4495831708,
            80408.6170861708,
            81408.7170881948,
            81568.8194861708,
            81681.3170881948,
            81768.8194895831,
            81798.4495808449,
            80408.6170808617,
            81408.7170870881,
            81568.8194858317,
            81681.3170870844,
            81768.8194881948,
            81798.4495849583,
        ]),
        priceChangePercentage24HInCurrency: 3952.64,
        currentHoldings: 1.5
    )
}
