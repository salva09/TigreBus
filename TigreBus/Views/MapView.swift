//
//  MapView.swift
//  TigreBus
//
//  Created by iOSLab12 on 10/03/22.
//

import SwiftUI
import GoogleMaps

struct MapView: UIViewRepresentable {
    var route: Route
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
        marker.position = route.getMarkerPosition()
        marker.icon = UIImage(systemName: "bus")
        marker.map = mapView

        origin.position = route.origin
        origin.map = mapView

        destination.position = route.destination
        destination.map = mapView

        for coordinate in route.routeWaypoints {
            path.add(coordinate)
        }
        let polyline = GMSPolyline(path: path)
        polyline.strokeColor = .blue
        polyline.strokeWidth = 1.0
        polyline.map = mapView
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        let routeExample = Route(
                origin: CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20),
                destination: CLLocationCoordinate2D(latitude: -31.86, longitude: 149.20),
                mapCenter: CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20),
                routeWaypoints: [
                    CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20),
                    CLLocationCoordinate2D(latitude: -31.86, longitude: 149.20)
                ],
                getMarkerPosition: { () -> CLLocationCoordinate2D in CLLocationCoordinate2D(latitude: -32.86, longitude: 150.20) }
        )

        MapView(route: routeExample)
    }
}
