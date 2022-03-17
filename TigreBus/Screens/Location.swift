//
//  Route.swift
//  TigreBus
//
//  Created by iOSLab12 on 10/03/22.
//

import SwiftUI
import GoogleMaps

struct Location: View {
    @State var selected = "Ruta"

    let routeExample = Route(
            origin: CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20),
            destination: CLLocationCoordinate2D(latitude: -31.86, longitude: 149.20),
            mapCenter: CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20),
            routeWaypoints: [
                CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20),
                CLLocationCoordinate2D(latitude: -31.86, longitude: 149.20)
            ]
    )

    var body: some View {
        NavigationView {
            MapView(route: routeExample)
                    .toolbar(content: {
                        Menu {
                            Button {
                                selected = "Linear"
                            } label: {
                                Text("Linear")
                                Image(systemName: "arrow.down.right.circle")
                            }
                            Button {
                                selected = "Radial"
                            } label: {
                                Text("Radial")
                                Image(systemName: "arrow.up.and.down.circle")
                            }
                        } label: {
                            Text(selected)
                            Image(systemName: "tag.circle")
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
