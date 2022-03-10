//
//  ContentView.swift
//  TigreBus
//
//  Created by iOSLab12 on 10/03/22.
//

import SwiftUI

struct ContentView: View {
    @State var selection = 0
    
    var body: some View {
        NavigationView {
            TabView(selection: $selection) {
                Home()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                }.tag(0)
                Route()
                    .tabItem {
                        Image(systemName: "map.fill")
                        Text("Route")
                    }.tag(1)
                Text("Nearby Screen")
                    .tabItem {
                        Image(systemName: "mappin.circle.fill")
                        Text("Nearby")
                    }.tag(2)
            }
            .navigationTitle(selection == 0 ? "Home" : "")
            .navigationBarTitleDisplayMode(selection == 0 ? .large : .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11")
    }
}
