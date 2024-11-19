//
//  StatisticView.swift
//  CryptoApp
//
//  Created by Sergey Zakurakin on 11/17/24.
//

import SwiftUI

struct StatisticView: View {
    
    let state: StatisticModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(state.title)
                .font(.caption)
                .foregroundStyle(.secondaryText)
            Text(state.value)
                .font(.headline)
                .foregroundStyle(.accent)
            
            HStack(spacing: 4) {
                Image(systemName: "triangle.fill")
                    .font(.caption2)
                    .rotationEffect(
                        Angle(degrees:(state.percentageChange ?? 0) >= 0 ? 0 : 180))
                
                Text(state.percentageChange?.asProcentString() ?? "")
                    .font(.caption)
                    .bold()
            }
            .foregroundStyle((state.percentageChange ?? 0) >= 0 ? Color.green : Color.red)
            .opacity(state.percentageChange == nil ? 0.0 : 1.0)
        }
    }
}

#Preview {
    Group {
        StatisticView(state: Preview.dev.stat1)
            .padding()
        StatisticView(state: Preview.dev.stat3)
    }
}
