//
//  Weather.swift
//  WeatherByColor
//
//  Created by Patrick Pahl on 8/16/16.
//  Copyright © 2016 Patrick Pahl. All rights reserved.
//

import Foundation

struct Weather {
    
    private let nameKey = "name"
    
    private let mainKey = "main"
    private let tempKey = "temp"
    private let tempMinKey = "temp_min"
    private let tempMaxKey = "temp_max"
    
    private let sysKey = "sys"
    private let sunriseKey = "sunrise"
    private let sunsetKey = "sunset"
    
    private let windKey = "wind"
    private let speedKey = "speed"
    
    private let weatherKey = "weather"
    private let descKey = "description"
    
    let name: String
    let temp: Double
    let temp_min: Double
    let temp_max: Double
    let sunrise: Double   
    let sunset: Double
    let speed: Double
    let description: String
    
//    var celsius: Double {
//        return temp - 273.15}
    
    var fahr: Double {
        return (temp - 273.15) * 1.8 + 32}
    
    var fahrMin: Double {
        return (temp_min - 273.15) * 1.8 + 32}
    
    var fahrMax: Double {
        return (temp_max - 273.15) * 1.8 + 32}
    
    init?(dictionary: [String: AnyObject]){
        
        guard let name = dictionary[nameKey] as? String else {return nil}
        
        guard let mainDictionary = dictionary[mainKey] as? [String:AnyObject],
        temp = mainDictionary[tempKey] as? Double,
        temp_min = mainDictionary[tempMinKey] as? Double,
        temp_max = mainDictionary[tempMaxKey] as? Double else {return nil}
        
        guard let sysDictionary = dictionary[sysKey] as? [String:AnyObject],
        sunrise = sysDictionary[sunriseKey] as? Double,  //NSDate
        sunset = sysDictionary[sunsetKey] as? Double else {return nil}  //NSDate
        
        guard let windDictionary = dictionary[windKey] as? [String:AnyObject],
        speed = windDictionary[speedKey] as? Double else {return nil}
        
        guard let weatherArray = dictionary[weatherKey] as? [[String:AnyObject]],
        let weatherDictionary = weatherArray.first,
        desc = weatherDictionary[descKey] as? String else {return nil}
        
        self.name = name
        self.temp = temp
        self.temp_min = temp_min
        self.temp_max = temp_max
        self.sunrise = sunrise
        self.sunset = sunset
        self.speed = speed
        self.description = desc
    }
}

