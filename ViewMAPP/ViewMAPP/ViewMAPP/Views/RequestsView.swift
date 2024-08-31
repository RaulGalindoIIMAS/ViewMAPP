//
//  RequestsView.swift
//  ViewMAPP
//
//  Created by Raul Galindo Hernandez on 30/08/24.
//

import SwiftUI

// MARK: RequestsView View
struct RequestsView: View {
    var citiLocation: [CitiLocation]
    
    var body: some View {
        VStack {
            List(citiLocation) { location in
                VStack(spacing: 1.0, content: {
                    Text("\(MapViewConstants.RequestView.dateDescription) \(location.time)")
                        .font(.title2)
                        .fontWeight(.regular)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top)
                    Text("\(MapViewConstants.RequestView.longitudeDescription) \(String(describing:location.coordinates.longitude))")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top)
                    Text("\(MapViewConstants.RequestView.latitudeDescription) \(String(describing: location.coordinates.latitude))")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top)
                    
                    NavigationLink(destination: MapView(
                        citi: City(coord: Coord(
                            lon: location.coordinates.longitude,
                            lat: location.coordinates.latitude)))) {
                                Text(MapViewConstants.RequestView.navigationLinkTitle)
                    }
                    .font(.title)
                    .fontWeight(.thin)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top)
                })
            }
            .listRowSeparatorTint(.gray)
            .navigationTitle(MapViewConstants.RequestView.requestViewTitle)
        }
    }
}

struct RequestsView_Previews: PreviewProvider {
    static var previews: some View {
        RequestsView(citiLocation:
            [CitiLocation(coordinates: Coordinates(longitude: 100.0, latitude: 100.0),
                         time: "05-11-24 12:25:10")])
    }
}

