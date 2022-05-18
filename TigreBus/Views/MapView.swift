//
//  MapView.swift
//  TigreBus
//
//  Created by iOSLab12 on 10/03/22.
//

import SwiftUI
import GoogleMaps

struct MapView: UIViewRepresentable {
    @Binding var route: Route
    @Binding var refresh: Bool
    
    let path: GMSMutablePath = GMSMutablePath()
    let marker: GMSMarker = GMSMarker()
    let origin: GMSMarker = GMSMarker()
    let destination: GMSMarker = GMSMarker()

    func makeUIView(context: Self.Context) -> GMSMapView {
        let camera = GMSCameraPosition.camera(withLatitude: route.mapCenter.latitude, longitude: route.mapCenter.longitude, zoom: 6.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)

        return mapView
    }

    func updateUIView(_ mapView: GMSMapView, context: Self.Context) {
        mapView.clear()

        mapView.animate(to: GMSCameraPosition.camera(withLatitude: route.mapCenter.latitude, longitude: route.mapCenter.longitude, zoom: 6.0))

        marker.position = route.getMarkerPosition()
        marker.icon = UIImage(systemName: "bus")
        marker.map = mapView

        origin.position = route.origin
        origin.map = mapView

        destination.position = route.destination
        destination.map = mapView

        path.removeAllCoordinates()
        for coordinate in route.routeWaypoints {
            path.add(coordinate)
        }
        let polyline = GMSPolyline(path: path)
        polyline.strokeColor = .blue
        polyline.strokeWidth = 1.0
        polyline.map = mapView
        
        let temp = refresh
    }
}
