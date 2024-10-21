//
//  WeatherViewModel.swift
//  SwiftUI-WeatherApp
//
//  Created by Satyam Dixit on 15/10/24.
//

import SwiftUI

class WeatherViewModel: ObservableObject {
    
    @Published var data: [CountryData]?
    
    func fetchCountries() {
        let urlString = "https://countriesnow.space/api/v0.1/countries"
        guard let url = URL(string: urlString) else { return }
//        
//        URLSession.dataTask(with: url) { data, response, error in
//            guard let data else { return }
//            
//            do {
//                let countries = try JSONDecoder().decode([CountryModel].self, from: data)
//                DispatchQueue.main.async {
//                    self.data = countries.compactMap($0.data)
//                }
//            } catch {
//                print(error)
//            }
//        }.resume()
        
    }
}
