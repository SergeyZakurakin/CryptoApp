//
//  HomeStatsView.swift
//  CryptoApp
//
//  Created by Sergey Zakurakin on 11/17/24.
//

import SwiftUI

struct HomeStatsView: View {
    
    @EnvironmentObject private var vm: HomeViewModel
    
    @Binding var showPortfolio: Bool
    
    var body: some View {
        HStack {
            ForEach(vm.statistics) { stat in
                StatisticView(state: stat)
                    .frame(width: UIScreen.main.bounds.width / 3)
            }
        }
        .frame(width: UIScreen.main.bounds.width,
               alignment: showPortfolio ? .trailing : .leading)
        
    }
}

#Preview {
    HomeStatsView(showPortfolio: .constant(false))
        .environmentObject(HomeViewModel())
}
