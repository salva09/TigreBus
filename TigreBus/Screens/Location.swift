//
//  Route.swift
//  TigreBus
//
//  Created by iOSLab12 on 10/03/22.
//

import SwiftUI
import GoogleMaps

struct Location: View {
    @State var selected: String
    @State var actualRoute: Route
    @State var refresh: Bool

    init() {
        _selected = State(initialValue: routeEntryList[0].name)
        _actualRoute = State(initialValue: routeEntryList[0].route)
        _refresh = State(initialValue: false)
    }

    var body: some View {
        NavigationView {
            MapView(route: $actualRoute, refresh: $refresh)
                .toolbar {
                    ToolbarItemGroup(placement: .navigationBarTrailing) {
                        Menu {
                            ForEach(routeEntryList, id: \.id) { entry in
                                Button {
                                    selected = entry.name
                                    actualRoute = entry.route
                                } label: {
                                    Text(entry.name)
                                }
                            }
                        } label: {
                            Text(selected)
                            Image(systemName: "location.circle")
                        }
                    }
                    ToolbarItemGroup(placement: .navigationBarLeading) {
                        Button("Update") {
                            // update the map view
                            refresh.toggle()
                        }
                    }
                }
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct Location_Previews: PreviewProvider {
    static var previews: some View {
        Location()
    }
}
