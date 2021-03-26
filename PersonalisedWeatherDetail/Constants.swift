//
//  Constants.swift
//  PersonalisedWeatherDetail
//
//  Created by Sachin Sabat on 23/03/21.
//

import Foundation

struct Constants {
    
    struct Urls {
        
        static func urlForWeatherByCity(city: String) -> URL {
            
            // get the default settings for temperature
            let userDefaults = UserDefaults.standard
            let unit = (userDefaults.value(forKey: "unit") as? String) ?? "imperial"
            
            return URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city.escaped())&appid=18287971ed3df26bd23b5d8d0f9ca933&units=\(unit)")!

        }
        
    }
    
}
