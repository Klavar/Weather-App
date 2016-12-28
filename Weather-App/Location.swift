//
//  Location.swift
//  Weather-App
//
//  Created by Tony Merritt on 27/12/2016.
//  Copyright © 2016 Tony Merritt. All rights reserved.
//

import CoreLocation


class Location {
    static var sharedInstance = Location()
    private init() {}
    
    var latitude: Double!
    var longitude: Double!
    
}
