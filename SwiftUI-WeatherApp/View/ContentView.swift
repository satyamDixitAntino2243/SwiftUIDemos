//
//  ContentView.swift
//  SwiftUI-WeatherApp
//
//  Created by Satyam Dixit on 14/10/24.
//

import SwiftUI

struct ContentView: View {
    @State var viewModel = WeatherViewModel()
    @State private var isNightMode: Bool = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNightMode: $isNightMode)
            VStack {
                CityView(cityName: "Cupertino, India")
                MainWeatherStatusView(weatherImageName: isNightMode ? "moon.zzz.fill" : "cloud.sun.fill", temperature: isNightMode ? 22 : 32)
                WeatherView()
                Spacer()
                Button {
                    isNightMode.toggle()
                }label: {
                    WeatherButton(title: "change Day Time", backgroundColor: .white, foregroundColor: .blue)
                }
                
                Spacer()
            }
        }
        
        HStack {
            
        }
    }
}

#Preview {
    ContentView()
}

struct CityView: View {
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .rounded))
            .foregroundStyle(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    var weatherImageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: weatherImageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundStyle(.white)
        }
        .padding(.bottom, 40)
    }
}

