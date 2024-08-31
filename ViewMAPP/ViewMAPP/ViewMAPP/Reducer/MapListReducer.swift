//
//  MapListReducer.swift
//  ViewMAPP
//
//  Created by Raul Galindo Hernandez on 30/08/24.
//
import ComposableArchitecture
import Foundation
import SwiftData

// MARK: MapListReducer struct Reducer
class MapListReducer: Reducer {
    
    struct State: Equatable {
        var cities: City?
        var isError: Bool = false
        var isLoading: Bool = false
    }

    enum Action {
        case fetchCities(ModelContext)
        case citiesFetched(City)
        case failFetchingData(Bool)
    }

    var body: some ReducerOf<MapListReducer> {
        Reduce { state, action in
            switch action {
            case .fetchCities(let modelContext):
                state.isLoading = true
                return .run { send in
                    let citiesUrl = MapViewConstants.APIURL.urlBase
                    guard let listURL = URL(string: citiesUrl) else { return }
                    var request = URLRequest(url: listURL)
                    request.httpMethod = MapViewConstants.APIURL.getRequest
                    request.setValue(MapViewConstants.APIURL.rapidapiKeyParameter,
                        forHTTPHeaderField: MapViewConstants.APIURL.keyHeaderName)
                    request.setValue(MapViewConstants.APIURL.rapidapiHostParameter,
                        forHTTPHeaderField:MapViewConstants.APIURL.hostHeaderName)
                    request.timeoutInterval = MapViewConstants.APIURL.timeoutInterval
                    
                    URLSession.shared.dataTask(with: request) {data, response, error in
                        guard let datum = data else { return send(.failFetchingData(true)) }
                        guard let getCities = try? JSONDecoder().decode(City.self, from: datum) else {
                            return send(.failFetchingData(true)) }
                        modelContext.insert(NewRegister.getCiti(citi: getCities))
                        send(.citiesFetched(getCities))
                    }.resume()
                }
            case let .citiesFetched(cities):
                state.cities = cities
                state.isLoading = false
                return .none
                
            case let .failFetchingData(error):
                state.isError = error
                state.isLoading = false
                return .none
            }
        }
    }
}
