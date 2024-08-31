//
//  MapView.swift
//  ViewMAPP
//
//  Created by Raul Galindo Hernandez on 30/08/24.
//

import SwiftUI
import MapKit

// MARK: MapView View
struct MapView: View {
    var citi: City
    
    var body: some View {
        Map(initialPosition:
            MapCameraPosition.region(
                MKCoordinateRegion(
                    center: CLLocationCoordinate2D(
                        latitude: Double(citi.coord.lat),
                        longitude: Double(citi.coord.lon)),
                    span: MKCoordinateSpan(
                        latitudeDelta: MapViewConstants.MapView.latitudeDelta,
                        longitudeDelta: MapViewConstants.MapView.longitudeDelta)
                )
            ), interactionModes: .all) {
                
                Annotation(MapViewConstants.MapView.annotationTitle,
                    coordinate: CLLocationCoordinate2D(
                        latitude: Double(citi.coord.lat),
                        longitude: Double(citi.coord.lon)),
                    anchor: .bottom) {
                    ZStack {
                        Circle()
                            .foregroundStyle(.indigo.opacity(MapViewConstants.MapView.backgroundOpacity))
                            .frame(width: MapViewConstants.MapView.annotationWidth,
                                   height: MapViewConstants.MapView.annotationHeight)

                        Image(systemName: MapViewConstants.MapView.carSystemImage)
                            .symbolEffect(.variableColor)
                            .padding()
                            .foregroundStyle(.white)
                            .background(Color.indigo)
                            .clipShape(Circle())
                    }
                }
                
        }
        .navigationTitle(MapViewConstants.MapView.mapViewTitle)
        .accessibilityIdentifier(MapViewConstants.MapView.mapViewTitle)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(citi: City(coord: Coord(lon: 100.0, lat: 100.0)))
    }
}
