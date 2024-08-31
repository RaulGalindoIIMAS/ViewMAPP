//
//  MapViewConstants.swift
//  ViewMAPP
//
//  Created by Raul Galindo Hernandez on 30/08/24.
//

// MARK: MapViewConstants struct
struct MapViewConstants {
    struct DateFormat {
        static let yearMonthDayFormat: String = "dd-MM-yyyy HH:mm:ss"
    }
    
    struct APIURL {
        static let urlBase: String = "https://open-weather13.p.rapidapi.com/city/landon/EN"
        static let getRequest: String = "GET"
        static let rapidapiKeyParameter: String = "ebc04bcc90msh3843ce42ca972a9p14020djsn250387630867"
        static let keyHeaderName: String = "x-rapidapi-key"
        static let rapidapiHostParameter: String = "open-weather13.p.rapidapi.com"
        static let hostHeaderName: String = "x-rapidapi-host"
        static let timeoutInterval: Double = 20.0
    }
    
    struct MapView {
        static let annotationTitle: String = "Place obtained from API"
        static let carSystemImage: String = "car.front.waves.up"
        static let mapViewTitle: String = "Location in Map View"
        static let latitudeDelta: Double = 0.2
        static let longitudeDelta: Double = 0.2
        static let backgroundOpacity: Double = 0.4
        static let annotationWidth: Double = 70.0
        static let annotationHeight: Double = 70.0
    }
    
    struct RequestView {
        static let dateDescription: String = "Date:"
        static let longitudeDescription: String = "Longitude:"
        static let latitudeDescription: String = "Latitude:"
        static let navigationLinkTitle: String = "Go to location"
        static let requestViewTitle: String = "Registers"
    }
    
    struct ContentView {
        static let headerMapTitle: String = "Map Location"
        static let headerRegistersTitle: String = "Stored data"
        static let headerFetchDataTitle: String = "Fetch data from API"
        static let navigationTitle: String = "App Location"
        static let headerMapImage: String = "location.circle"
        static let headerMapText: String = "Go to Map View"
        static let headerRegistersImage: String = "icloud"
        static let headerRegistersText: String = "Go to stored data from API"
        static let headerFetchDataImage: String = "square.and.arrow.down"
        static let headerFetchDataText: String = "Fetch data from API"
    }
}
