//
//  Untitled.swift
//  SwiftUI-WeatherApp
//
//  Created by Satyam Dixit on 15/10/24.
//
import Foundation

// MARK: - CountryDataModel
struct CountryModel: Codable {
    let error: Bool?
    let msg: String?
    let data: [CountryData]?
}

// MARK: - CountryData
struct CountryData: Codable {
    let iso2, iso3, country: String?
    let cities: [String]?
}
