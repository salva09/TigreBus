//
//  ContentView.swift
//  TigreBus
//
//  Created by iOSLab12 on 10/03/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Home()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
            }
            Route()
                .tabItem {
                    Image(systemName: "map.fill")
                    Text("Route")
                }
            Schedules()
                .tabItem {
                    Image(systemName: "clock.fill")
                    Text("Schedules")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11")
    }
}
