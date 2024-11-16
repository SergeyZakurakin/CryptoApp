//
//  CoinImageService.swift
//  CryptoApp
//
//  Created by Sergey Zakurakin on 11/15/24.
//

import SwiftUI
import Combine

final class CoinImageService {
    
    @Published var image: UIImage? = nil
    
    private var imageSubscription: AnyCancellable?
    private let coin: CoinModel
    
    init(coin: CoinModel) {
        self.coin = coin
        getCoinImage()
    }
    
    private func getCoinImage() {
        guard let url = URL(string: coin.image) else { return }
        
        imageSubscription = NetworkingManager.download(url: url)
            .tryMap({ (data) -> UIImage? in
                return UIImage(data: data)
            })
        
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self]
                (returnedImage) in
                
                guard let self else { return }
                image = returnedImage
                // cancel get request after once
                imageSubscription?.cancel()
            })
    }
}
