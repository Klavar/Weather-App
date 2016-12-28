//
//  Forecast.swift
//  Weather-App
//
//  Created by Tony Merritt on 27/12/2016.
//  Copyright © 2016 Tony Merritt. All rights reserved.
//

import Foundation
import Alamofire

class Forecast  {
    
    var _date: String!
    var _weatherType: String!
    var _highTemp: String!
    var _lowTemp: String!
    
    var date: String {
        if _date == nil {
            _date = ""
        }
        return _date
    }
    
    var weatherType: String {
        if _weatherType == nil {
            _weatherType = ""
        }
            return _weatherType
    }
    
    var highTemp: String {
        if _highTemp == nil {
            _highTemp = ""
        }
        return _highTemp
    }
    
    var lowtemp: String {
        if _lowTemp == nil {
            _lowTemp = ""
        }
        return _lowTemp
 
    }
    
    init(weatherDict: Dictionary<String, Any>) {
        
        if let temp = weatherDict["temp"] as? Dictionary<String, Any> {
            
            if let min = temp["min"] as? Double {
                    
                    let kelvinToFarenheitPreDivision = (min * (9/5) - 459.67)
                    
                    let kelvintofarenheit = Double(round(10 * kelvinToFarenheitPreDivision/10))
                    
                    self._lowTemp = "\(kelvintofarenheit)"
            }
            
            if let max = temp["max"] as? Double {
                
                    let kelvinToFarenheitPreDivision = (max * (9/5) - 459.67)
                    
                    let kelvintofarenheit = Double(round(10 * kelvinToFarenheitPreDivision/10))
                    
                    self._highTemp = "\(kelvintofarenheit)"
                
            }
        }
        
        if let weather = weatherDict["weather"] as? [Dictionary<String, Any>] {
            
            if let main = weather[0]["main"] as? String {
                self._weatherType = main
            }
        }
        
        if let date = weatherDict["dt"] as? Double {
            
            let unixConvertedDate = Date(timeIntervalSince1970: date)
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .full
            dateFormatter.dateFormat = "EEEE"
            dateFormatter.timeStyle = .none
            self._date = unixConvertedDate.dayOfTheWeek()
            
            }
        
        }
    }

extension Date {
    func dayOfTheWeek() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: self)
    }
}
