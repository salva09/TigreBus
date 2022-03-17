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
    let getMarkerPosition: () -> CLLocationCoordinate2D
}
