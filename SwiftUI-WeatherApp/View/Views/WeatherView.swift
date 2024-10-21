//
//  WeatherView.swift
//  SwiftUI-WeatherApp
//
//  Created by Satyam Dixit on 15/10/24.
//

import SwiftUI

struct Weather: Identifiable {
    let id = UUID()
    let day: String
    let icon: String
    let temperature: Int
}

struct WeatherView: View {
    
    let weatherData: [Weather] = [
        Weather(day: "TUE", icon: "cloud.sun.fill", temperature: 34),
        Weather(day: "WED", icon: "cloud.sun.bolt.fill", temperature: 39),
        Weather(day: "THU", icon: "cloud.snow.fill", temperature: 10),
        Weather(day: "FRI", icon: "cloud.drizzle.fill", temperature: 18),
        Weather(day: "SAT", icon: "cloud.rain.fill", temperature: 22),
        Weather(day: "SUN", icon: "cloud.sun.bolt.fill", temperature: 30),
        Weather(day: "MON", icon: "cloud.rainbow.crop.fill", temperature: 28)
    ]
    
    var body: some View {
        HStack(spacing: 10) {
            ForEach(weatherData) { weather in
                VStack(spacing: 10) {
                    Text(weather.day)
                        .font(.system(size: 16, weight: .medium, design: .default))
                        .foregroundStyle(.white)
                    
                    Image(systemName: weather.icon)
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40, height: 40)
                    
                    Text("\(weather.temperature)°")
                        .font(.system(size: 28, weight: .medium))
                        .foregroundStyle(.white)
                }
            }
        }
    }
}
