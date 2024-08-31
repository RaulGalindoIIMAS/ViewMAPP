//
//  City.swift
//  ViewMAPP
//
//  Created by Raul Galindo Hernandez on 30/08/24.
//

import Foundation

// MARK: City model struct
struct City: Codable, Equatable {
    let coord: Coord
}

struct Coord: Codable, Equatable {
    let lon: Float
    let lat: Float
}

extension City {
    static let mock: City =
        City(coord: Coord(lon: -89.1028, lat: 30.438))
}
