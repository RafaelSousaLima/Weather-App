//
//  Service.swift
//  Weather App
//
//  Created by Rafael Lima on 11/03/25.
//

import Foundation

class Service {
    private let baseURL = URL(string: "https://api.openweathermap.org/data/3.0/onecall")!
    private let apiKey = "f8ed4911ad98ac4f98413ea8bb791915"
    private let session = URLSession.shared
    
    func featchDate(city: City, _ completion: @escaping (ForecastResponse?) -> Void) {
        let urlString = "\(baseURL)?lat=\(city.lat)&lon=\(city.lon)&appid=\(apiKey)&units=metric"
        
        guard let url = URL(string: urlString) else { return }
        
        let task = session.dataTask(with: url) { data, response, error in
            
            guard let data = data else {
                completion(nil)
                return
            }
            
            do {
                let ForecastResponse = try JSONDecoder().decode(ForecastResponse.self, from: data)
                completion(ForecastResponse)
            } catch {
                print(error)
                completion(nil)
            }
            
        }
        
        task.resume()
        
    }
    
}
