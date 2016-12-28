//
//  WeatherCell.swift
//  Weather-App
//
//  Created by Tony Merritt on 27/12/2016.
//  Copyright © 2016 Tony Merritt. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {

    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var weatharType: UILabel!
    @IBOutlet weak var highTemp: UILabel!
    @IBOutlet weak var lowTemp: UILabel!
    
    func configureCell(forecast: Forecast) {
        lowTemp.text = forecast.lowtemp
        highTemp.text = "\(forecast.highTemp)"
        weatharType.text = "\(forecast.weatherType)"
        dayLabel.text = forecast.date
        weatherIcon.image = UIImage(named: forecast.weatherType)
    }

}
