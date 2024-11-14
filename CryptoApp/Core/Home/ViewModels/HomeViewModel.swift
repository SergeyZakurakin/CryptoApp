//
//  HomeViewModel.swift
//  CryptoApp
//
//  Created by Sergey Zakurakin on 11/12/24.
//

import Foundation
import Combine

final class HomeViewModel: ObservableObject {
    
    @Published var allCoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    
    private let dateService = CoinDataService()
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        
        addSubscribers()
    }
    
    func addSubscribers() {
        dateService.$allCoins
            .sink { [weak self] (returnedCoins) in
                guard let self else { return }
                self.allCoins = returnedCoins
            }
            .store(in: &cancellables)
    }
}
