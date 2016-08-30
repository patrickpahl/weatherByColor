//
//  WeatherViewController.swift
//  WeatherByColor
//
//  Created by Patrick Pahl on 8/16/16.
//  Copyright © 2016 Patrick Pahl. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController, UISearchBarDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
    
    self.cityAndTempView.layer.cornerRadius = 12.0
    self.otherDescView.layer.cornerRadius = 12.0
    
    self.view.backgroundColor = UIColor.init(red: 0.0/255, green: 202.0/255, blue: 252.0/255, alpha: 1)
    }
    
    //MARK: - Outlets
    
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var currentTempLabel: UILabel!
    @IBOutlet weak var lowTempLabel: UILabel!
    @IBOutlet weak var highTempLabel: UILabel!
    @IBOutlet weak var sunriseLabel: UILabel!
    @IBOutlet weak var sunsetLabel: UILabel!
    @IBOutlet weak var windLabel: UILabel!
    @IBOutlet weak var conditionsLabel: UILabel!
    
    @IBOutlet weak var cityAndTempView: UIView!
    
    @IBOutlet weak var otherDescView: UIView!
    
    
    @IBOutlet weak var mySearchBar: UISearchBar!
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.mySearchBar.endEditing(true)
    }
    
    
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        
        guard let searchTerm = searchBar.text else {return}
        
        searchBar.resignFirstResponder()
        
        WeatherController.getWeather(searchTerm) { (weather) in
            
        guard let weather = weather else {return}
         
        let sunriseDate = NSDate(timeIntervalSince1970: weather.sunrise)
        let sunsetDate = NSDate(timeIntervalSince1970: weather.sunset)
            
        self.locationLabel.text = "🎯 \(weather.name)"
        self.currentTempLabel.text = "🌡 \(Int(weather.fahr)) ºF"
        self.lowTempLabel.text = "🔵 low: \(Int(weather.fahrMin)) ºF"
        self.highTempLabel.text = "🔴 high:\(Int(weather.fahrMax)) ºF"
        self.sunriseLabel.text = "☀️ sunrise: \(sunriseDate.stringValue())"
        self.sunsetLabel.text = "🌙 sunset: \(sunsetDate.stringValue())"
        self.windLabel.text = "💨 wind: \(Int(weather.speed)) mph"
        self.conditionsLabel.text = "\(weather.description)."
        
            print(Int(weather.fahr))
            
            if Int(weather.fahr) < 31 {
                self.view.backgroundColor = UIColor.init(red: 238.0/255, green: 62.0/255, blue: 252.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 32 {
                self.view.backgroundColor = UIColor.init(red: 225.0/255, green: 59.0/255, blue: 240.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 33{
                self.view.backgroundColor = UIColor.init(red: 213.0/255, green: 55.0/255, blue: 229.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 34{
                self.view.backgroundColor = UIColor.init(red: 200.0/255, green: 52.0/255, blue: 217.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 35{
                self.view.backgroundColor = UIColor.init(red: 194.0/255, green: 50.0/255, blue: 210.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 36{
                self.view.backgroundColor = UIColor.init(red: 178.0/255, green: 45.0/255, blue: 194.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 37{
                self.view.backgroundColor = UIColor.init(red: 168.0/255, green: 42.0/255, blue: 185.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 38{
                self.view.backgroundColor = UIColor.init(red: 158.0/255, green: 39.0/255, blue: 175.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 39{
                self.view.backgroundColor = UIColor.init(red: 137.0/255, green: 32.0/255, blue: 146.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 40{
                self.view.backgroundColor = UIColor.init(red: 0.0/255, green: 250.0/255, blue: 252.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 41{
                self.view.backgroundColor = UIColor.init(red: 0.0/255, green: 239.0/255, blue: 241.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 42{
                self.view.backgroundColor = UIColor.init(red: 0.0/255, green: 239.0/255, blue: 241.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 43{
                self.view.backgroundColor = UIColor.init(red: 0.0/255, green: 221.0/255, blue: 233.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 44{
                self.view.backgroundColor = UIColor.init(red: 0.0/255, green: 221.0/255, blue: 231.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 45{
                self.view.backgroundColor = UIColor.init(red: 0.0/255, green: 212.0/255, blue: 214.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 46{
                self.view.backgroundColor = UIColor.init(red: 0.0/255, green: 200.0/255, blue: 202.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 47{
                self.view.backgroundColor = UIColor.init(red: 0.0/255, green: 185.0/255, blue: 187.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 48{
                self.view.backgroundColor = UIColor.init(red: 0.0/255, green: 170.0/255, blue: 172.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 49{
                self.view.backgroundColor = UIColor.init(red: 0.0/255, green: 149.0/255, blue: 150.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 50{
                self.view.backgroundColor = UIColor.init(red: 0.0/255, green: 202.0/255, blue: 252.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 51{
                self.view.backgroundColor = UIColor.init(red: 0.0/255, green: 202.0/255, blue: 252.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 52{
                self.view.backgroundColor = UIColor.init(red: 0.0/255, green: 196.0/255, blue: 246.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 53{
                self.view.backgroundColor = UIColor.init(red: 0.0/255, green: 189.0/255, blue: 237.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 54{
                self.view.backgroundColor = UIColor.init(red: 0.0/255, green: 182.0/255, blue: 228.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 55{
                self.view.backgroundColor = UIColor.init(red: 0.0/255, green: 175.0/255, blue: 222.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 56{
                self.view.backgroundColor = UIColor.init(red: 0.0/255, green: 169.0/255, blue: 217.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 57{
                self.view.backgroundColor = UIColor.init(red: 2.0/255, green: 163.0/255, blue: 209.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 58{
                self.view.backgroundColor = UIColor.init(red: 2.0/255, green: 155.0/255, blue: 199.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 59{
                self.view.backgroundColor = UIColor.init(red: 1.0/255, green: 144.0/255, blue: 187.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 60{
                self.view.backgroundColor = UIColor.init(red: 0.0/255, green: 248.0/255, blue: 174.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 61{
                self.view.backgroundColor = UIColor.init(red: 0.0/255, green: 248.0/255, blue: 174.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 62{
                self.view.backgroundColor = UIColor.init(red: 2.0/255, green: 235.0/255, blue: 165.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 63{
                self.view.backgroundColor = UIColor.init(red: 2.0/255, green: 223.0/255, blue: 159.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 64{
                self.view.backgroundColor = UIColor.init(red: 0.0/255, green: 210.0/255, blue: 149.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 65{
                self.view.backgroundColor = UIColor.init(red: 1.0/255, green: 203.0/255, blue: 146.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 66{
                self.view.backgroundColor = UIColor.init(red: 4.0/255, green: 193.0/255, blue: 141.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 67{
                self.view.backgroundColor = UIColor.init(red: 6.0/255, green: 187.0/255, blue: 137.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 68{
                self.view.backgroundColor = UIColor.init(red: 0.0/255, green: 173.0/255, blue: 127.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 69{
                self.view.backgroundColor = UIColor.init(red: 1.0/255, green: 159.0/255, blue: 110.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 70{
                self.view.backgroundColor = UIColor.init(red: 0.0/255, green: 247.0/255, blue: 120.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 71{
                self.view.backgroundColor = UIColor.init(red: 0.0/255, green: 247.0/255, blue: 120.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 72{
                self.view.backgroundColor = UIColor.init(red: 1.0/255, green: 230.0/255, blue: 113.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 73{
                self.view.backgroundColor = UIColor.init(red: 0.0/255, green: 226.0/255, blue: 114.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 74{
                self.view.backgroundColor = UIColor.init(red: 0.0/255, green: 217.0/255, blue: 109.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 75{
                self.view.backgroundColor = UIColor.init(red: 4.0/255, green: 205.0/255, blue: 105.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 76{
                self.view.backgroundColor = UIColor.init(red: 3.0/255, green: 198.0/255, blue: 103.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 77{
                self.view.backgroundColor = UIColor.init(red: 7.0/255, green: 186.0/255, blue: 99.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 78{
                self.view.backgroundColor = UIColor.init(red: 5.0/255, green: 168.0/255, blue: 89.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 79{
                self.view.backgroundColor = UIColor.init(red: 4.0/255, green: 139.0/255, blue: 71.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 80{
                self.view.backgroundColor = UIColor.init(red: 253.0/255, green: 223.0/255, blue: 0.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 81{
                self.view.backgroundColor = UIColor.init(red: 253.0/255, green: 223.0/255, blue: 0.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 82{
                self.view.backgroundColor = UIColor.init(red: 246.0/255, green: 217.0/255, blue: 5.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 83{
                self.view.backgroundColor = UIColor.init(red: 239.0/255, green: 212.0/255, blue: 8.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 84{
                self.view.backgroundColor = UIColor.init(red: 233.0/255, green: 207.0/255, blue: 8.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 85{
                self.view.backgroundColor = UIColor.init(red: 230.0/255, green: 203.0/255, blue: 11.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 86{
                self.view.backgroundColor = UIColor.init(red: 228.0/255, green: 201.0/255, blue: 11.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 87{
                self.view.backgroundColor = UIColor.init(red: 220.0/255, green: 196.0/255, blue: 13.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 88{
                self.view.backgroundColor = UIColor.init(red: 216.0/255, green: 191.0/255, blue: 16.0/255, alpha: 1.0)
                
            } else if Int(weather.fahr) == 89{
                self.view.backgroundColor = UIColor.init(red: 211.0/255, green: 189.0/255, blue: 17.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 90{
                self.view.backgroundColor = UIColor.init(red: 255.0/255, green: 95.0/255, blue: 0.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 91{
                self.view.backgroundColor = UIColor.init(red: 245.0/255, green: 90.0/255, blue: 1.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 92{
                self.view.backgroundColor = UIColor.init(red: 245.0/255, green: 90.0/255, blue: 1.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 93{
                self.view.backgroundColor = UIColor.init(red: 237.0/255, green: 88.0/255, blue: 6.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 94 {
                self.view.backgroundColor = UIColor.init(red: 232.0/255, green: 86.0/255, blue: 5.0/255, alpha: 1.0)
                
            } else if Int(weather.fahr) == 95{
                self.view.backgroundColor = UIColor.init(red: 228.0/255, green: 82.0/255, blue: 6.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 96{
                self.view.backgroundColor = UIColor.init(red: 220.0/255, green: 80.0/255, blue: 11.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 97{
                self.view.backgroundColor = UIColor.init(red: 215.0/255, green: 78.0/255, blue: 19.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 98{
                self.view.backgroundColor = UIColor.init(red: 214.0/255, green: 78.0/255, blue: 19.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 99{
                self.view.backgroundColor = UIColor.init(red: 211.0/255, green: 76.0/255, blue: 19.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 100{
                self.view.backgroundColor = UIColor.init(red: 255.0/255, green: 38.0/255, blue: 0.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 101{
                self.view.backgroundColor = UIColor.init(red: 246.0/255, green: 39.0/255, blue: 40.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 102{
                self.view.backgroundColor = UIColor.init(red: 246.0/255, green: 39.0/255, blue: 40.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 103{
                self.view.backgroundColor = UIColor.init(red: 237.0/255, green: 36.0/255, blue: 34.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 104{
                self.view.backgroundColor = UIColor.init(red: 234.0/255, green: 36.0/255, blue: 31.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 105{
                self.view.backgroundColor = UIColor.init(red: 224.0/255, green: 33.0/255, blue: 23.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 106{
                self.view.backgroundColor = UIColor.init(red: 217.0/255, green: 32.0/255, blue: 19.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 107{
                self.view.backgroundColor = UIColor.init(red: 206.0/255, green: 29.0/255, blue: 11.0/255, alpha: 1)
                
            } else if Int(weather.fahr) == 108{
                self.view.backgroundColor = UIColor.init(red: 194.0/255, green: 26.0/255, blue: 9.0/255, alpha: 1)
                
                //ELSE 109+
            
            } else {
                self.view.backgroundColor = UIColor.init(red: 182.0/255, green: 24.0/255, blue: 4.0/255, alpha: 1)
            }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
