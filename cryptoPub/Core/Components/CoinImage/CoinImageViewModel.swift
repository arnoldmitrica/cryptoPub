//
//  CoinImageViewModel.swift
//  cryptoPub
//
//  Created by Arnold Mitricã on 08.06.2021.
//

import Foundation
import Combine
import SwiftUI

class CoinImageViewModel:ObservableObject{
    
    @Published var image:UIImage? = nil
    @Published var isLoading = false
    private let coin:CoinModel
    private let dataService:CoinImageService
    private var cancellables = Set<AnyCancellable>()
    
    init(coin:CoinModel){
        self.coin = coin
        self.dataService = CoinImageService(coin: coin)
        self.addSubscribers()
        self.isLoading = true
    }
    private func addSubscribers(){
        dataService.$image
            .sink { [weak self] (_) in
                self?.isLoading = false
            } receiveValue: { [weak self] (img) in
                self?.image = img
            }
            .store(in: &cancellables)

    }
    
}
