//
//  CitiLocation.swift
//  ViewMAPP
//
//  Created by Raul Galindo Hernandez on 30/08/24.
//
import SwiftData

// MARK: CitiLocation Model class
@Model class CitiLocation {
    var coordinates: Coordinates
    var time: String
    
    init(coordinates: Coordinates, time: String) {
        self.coordinates = coordinates
        self.time = time
    }
}

@Model class Coordinates {
    var longitude: Float
    var latitude: Float
    
    init(longitude: Float, latitude: Float) {
        self.longitude = longitude
        self.latitude = latitude
    }
}
