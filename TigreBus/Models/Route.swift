//
//  RouteEntry.swift
//  TigreBus
//
//  Created by iOSLab12 on 11/03/22.
//

import Foundation
import GoogleMaps

struct Route: Identifiable {
    let id = UUID()
    let origin: CLLocationCoordinate2D
    let destination: CLLocationCoordinate2D
    let mapCenter: CLLocationCoordinate2D
    let routeWaypoints: [CLLocationCoordinate2D]

    func getMarkerPosition() -> CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: -32.86, longitude: 150.20)
    }
}
