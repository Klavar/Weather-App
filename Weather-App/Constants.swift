//
//  Constants.swift
//  Weather-App
//
//  Created by Tony Merritt on 27/12/2016.
//  Copyright © 2016 Tony Merritt. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATTITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "a33190ff628f4a3f977669323948815c"

typealias DownloadComplete = () -> ()


let CURRENT_WEATHER_URL = "http://api.openweathermap.org/data/2.5/weather?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&appid=a33190ff628f4a3f977669323948815c"

let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&cnt=10&mode=json&appid=a33190ff628f4a3f977669323948815c"



