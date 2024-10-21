//
//  BackgroundView.swift
//  SwiftUI-WeatherApp
//
//  Created by Satyam Dixit on 14/10/24.
//

import SwiftUI

struct BackgroundView: View {
    
    @Binding var isNightMode: Bool
    
    var body: some View {
        LinearGradient(colors: [isNightMode ? .black : .orange, isNightMode ? .white : .blue],
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}
