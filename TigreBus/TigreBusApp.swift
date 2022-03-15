//
//  TigreBusApp.swift
//  TigreBus
//
//  Created by iOSLab12 on 10/03/22.
//

import SwiftUI
import GoogleMaps

@main
struct TigreBusApp: App {
    
    init () {
        GMSServices.provideAPIKey("AIzaSyANkL2vMem0qa7xhgjHCQ3FUePbW8jUL4c")
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
