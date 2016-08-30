//
//  dateHelper.swift
//  WeatherByColor
//
//  Created by Patrick Pahl on 8/24/16.
//  Copyright © 2016 Patrick Pahl. All rights reserved.
//

import Foundation



extension NSDate {
    
    func stringValue() -> String {
        
        let formatter = NSDateFormatter()
        formatter.timeStyle = .ShortStyle
        
        return formatter.stringFromDate(self)
    }
}
