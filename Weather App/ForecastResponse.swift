//
//  ForecastResponse.swift
//  Weather App
//
//  Created by Rafael Lima on 12/03/25.
//
// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let forecastResponse = try? JSONDecoder().decode(ForecastResponse.self, from: jsonData)

import Foundation

// MARK: - ForecastResponse
struct ForecastResponse: Codable {
    
    let current: Forecast
    let hourly: [Forecast]
    let daily: [DailyForecast]

    enum CodingKeys: String, CodingKey {
        case current, hourly, daily
    }
}

// MARK: - Current
struct Forecast: Codable {
    let dt: Int
    let temp: Double
    let humidity: Int
    let windSpeed: Double
    let weather: [Weather]

    enum CodingKeys: String, CodingKey {
        case dt, temp, humidity
        case windSpeed = "wind_speed"
        case weather
    }
}

// MARK: - Weather
struct Weather: Codable {
    let id: Int
    let main, description, icon: String
}

// MARK: - Daily
struct DailyForecast: Codable {
    let dt: Int
    let temp: Temp
    let weather: [Weather]

    enum CodingKeys: String, CodingKey {
        case dt, temp, weather
    }
}

// MARK: - Temp
struct Temp: Codable {
    let day, min, max, night: Double
    let eve, morn: Double
}
