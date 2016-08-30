//
//  WeatherController.swift
//  WeatherByColor
//
//  Created by Patrick Pahl on 8/16/16.
//  Copyright © 2016 Patrick Pahl. All rights reserved.
//

import Foundation

    //TO DO:
    //activity indicator
    //error NSAlert if not online
    //http://api.openweathermap.org/data/2.5/weather?q=London&APPID=545220e5abf77c2a88c5e5634adc4446

class WeatherController {
    
    static private let apiKey = "545220e5abf77c2a88c5e5634adc4446"
    static let baseURL = NSURL(string: "http://api.openweathermap.org/data/2.5/weather")
    
    static func getWeather(cityName: String, completion: (weather: Weather?) -> Void) {
        
        guard let url = baseURL else {
            completion (weather: nil)
            return
        }
    
        let params = ["q":"\(cityName)", "appid":WeatherController.apiKey]
    
        NetworkController.performRequestForURL(url, httpMethod: .Get, urlParameters: params, body: nil) { (data, error) in
            
            guard let data = data,
            jsonDictionary = (try? NSJSONSerialization.JSONObjectWithData(data, options: .AllowFragments)) as? [String:AnyObject] else {
                completion(weather: nil)
                return
        }
        
            dispatch_async(dispatch_get_main_queue(), { 
                let weather = Weather(dictionary: jsonDictionary)
                completion(weather: weather)
                
                //test
                print(weather?.description)
            })
        }
    }
}


