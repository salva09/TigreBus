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

    init() {
        _selected = State(initialValue: routeEntryList[0].name)
        _actualRoute = State(initialValue: routeEntryList[0].route)
    }

    var body: some View {
        NavigationView {
            MapView(route: $actualRoute)
                    .toolbar(content: {
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
                        .padding()
                    })
                    .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct Location_Previews: PreviewProvider {
    static var previews: some View {
        Location()
    }
}
