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
    private let fileManager = LocalFileManager.shared
    private let folderName = "coin_images"
    private let imageName: String
    
    init(coin: CoinModel) {
        self.coin = coin
        self.imageName = coin.id
        getCoinImage()
    }
    
    private func getCoinImage() {
        if let savedImage = fileManager.getImage(imageName: imageName, folderName: folderName) {
            image = savedImage
            print("Retrieved Image from file manager!")
        } else {
            downloadCoinImage()
            print("downloading image now")
        }
    }
    
    private func downloadCoinImage() {
        print("downloading image now")
        guard let url = URL(string: coin.image) else { return }
        
        imageSubscription = NetworkingManager.download(url: url)
            .tryMap({ (data) -> UIImage? in
                return UIImage(data: data)
            })
        
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self]
                (returnedImage) in
                
                guard let self, let downloadedImage = returnedImage else { return }
                image = downloadedImage
                // cancel get request after once
                imageSubscription?.cancel()
                fileManager.saveImage(image: downloadedImage, imageName: imageName, folderName: folderName)
            })
    }
}
