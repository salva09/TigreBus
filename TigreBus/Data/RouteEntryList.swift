//
//  RouteEntryList.swift
//  TigreBus
//
//  Created by iOSLab12 on 17/03/22.
//

import Foundation
import GoogleMaps

let routeEntryList = [
    RouteEntry(
            name: "Location 1",
            route: Route(
                    origin: CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20),
                    destination: CLLocationCoordinate2D(latitude: -33.86, longitude: 148.20),
                    mapCenter: CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20),
                    routeWaypoints: [
                        CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20),
                        CLLocationCoordinate2D(latitude: -31.86, longitude: 149.20),
                        CLLocationCoordinate2D(latitude: -33.86, longitude: 148.20)
                    ],
                    getMarkerPosition: { () -> CLLocationCoordinate2D in
                        let index = Int.random(in: 0..<3)
                        let list = [
                            CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20),
                            CLLocationCoordinate2D(latitude: -31.86, longitude: 149.20),
                            CLLocationCoordinate2D(latitude: -33.86, longitude: 148.20)
                        ]
                        return list[index]
                    }
            )
    ),
    RouteEntry(
            name: "Location 2",
            route: Route(
                    origin: CLLocationCoordinate2D(latitude: -53.86, longitude: 171.20),
                    destination: CLLocationCoordinate2D(latitude: -51.86, longitude: 169.20),
                    mapCenter: CLLocationCoordinate2D(latitude: -53.86, longitude: 171.20),
                    routeWaypoints: [
                        CLLocationCoordinate2D(latitude: -53.86, longitude: 171.20),
                        CLLocationCoordinate2D(latitude: -51.86, longitude: 169.20)
                    ],
                    getMarkerPosition: { () -> CLLocationCoordinate2D in CLLocationCoordinate2D(latitude: -52.86, longitude: 170.20) }
            )
    )
]
