//
//  ContentView.swift
//  ViewMAPP
//
//  Created by Raul Galindo Hernandez on 29/08/24.
//

import SwiftUI
import SwiftData
import ComposableArchitecture

// MARK: ContentView View
struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var registers: [CitiLocation]
    @State private var hideNavigation = true
    let store: StoreOf<MapListReducer>

    var body: some View {
        
        WithViewStore(self.store, observe: { $0 }) { viewStore in
            NavigationView {
                
                List {
                    Section(header: Text(MapViewConstants.ContentView.headerMapTitle)) {
                        NavigationLink {
                            if let citi = viewStore.cities {
                                MapView(citi: citi)
                            }
                        } label: {
                            HStack {
                                Image(systemName: MapViewConstants.ContentView.headerMapImage)
                                Text(MapViewConstants.ContentView.headerMapText)
                            }
                        }
                        .disabled(hideNavigation)
                        .accessibilityIdentifier(MapViewConstants.MapView.mapViewTitle)
                    }
                    
                    Section(header: Text(MapViewConstants.ContentView.headerRegistersTitle)) {
                        NavigationLink(destination:
                            RequestsView(citiLocation: registers)) {
                            HStack {
                                Image(systemName: MapViewConstants.ContentView.headerRegistersImage)
                                Text(MapViewConstants.ContentView.headerRegistersText)
                            }
                        }
                        .disabled(hideNavigation)
                        .accessibilityIdentifier(MapViewConstants.RequestView.requestViewTitle)
                    }
                    
                    Section(header: Text(MapViewConstants.ContentView.headerFetchDataTitle)) {
                        HStack {
                            Button {
                                viewStore.send(.fetchCities(modelContext))
                                hideNavigation = false
                            } label: {
                                HStack {
                                    Image(systemName: MapViewConstants.ContentView.headerFetchDataImage)
                                    Text(MapViewConstants.ContentView.headerFetchDataText)
                                }
                            }
                            .accessibilityIdentifier(MapViewConstants.ContentView.headerFetchDataText)
                        }
                    }
                }
                .navigationTitle(MapViewConstants.ContentView.navigationTitle)
                .accessibilityIdentifier(MapViewConstants.ContentView.navigationTitle)
            }
        }
    }

    private func addItem() {
        withAnimation {
            let newItem = Item(timestamp: Date())
            modelContext.insert(newItem)
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(registers[index])
            }
        }
    }
}

#Preview {
    ContentView(store: Store(initialState: MapListReducer.State(), reducer: {
        MapListReducer()
    }))
}
