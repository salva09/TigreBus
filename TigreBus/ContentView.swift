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
                        Text("Friends")
                }
                Text("Nearby Screen")
                    .tabItem {
                        Image(systemName: "mappin.circle.fill")
                        Text("Nearby")
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
