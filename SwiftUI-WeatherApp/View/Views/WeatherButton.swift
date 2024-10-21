//
//  WeatherButton.swift
//  SwiftUI-WeatherApp
//
//  Created by Satyam Dixit on 14/10/24.
//

import SwiftUI

struct WeatherButton: View {
    var title: String
    var backgroundColor: Color
    var foregroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 200,height: 50,alignment: .center)
            .background(backgroundColor)
            .foregroundStyle(foregroundColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}
