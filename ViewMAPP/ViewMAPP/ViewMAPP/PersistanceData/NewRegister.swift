//
//  NewRegister.swift
//  ViewMAPP
//
//  Created by Raul Galindo Hernandez on 30/08/24.
//

import Foundation

// MARK: NewRegister class to store registers
class NewRegister {
    static func getCiti(citi: City) -> CitiLocation {
        let now = Date()
        let formatter = DateFormatter()
        formatter.timeZone = TimeZone.current
        formatter.dateFormat = MapViewConstants.DateFormat.yearMonthDayFormat
        let dateString = formatter.string(from: now)
        
        let coordinates: Coordinates = Coordinates(
            longitude: citi.coord.lon, latitude: citi.coord.lat)
        return CitiLocation(coordinates: coordinates, time: dateString)
    }
}
