//
//  Route.swift
//  TigreBus
//
//  Created by iOSLab12 on 10/03/22.
//

import SwiftUI

struct Location: View {
    @State var selected = "Ruta"
    
    var body: some View {
        NavigationView {
            MapView()
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
                }.padding()
            })
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct Route_Previews: PreviewProvider {
    static var previews: some View {
        Route()
    }
}
