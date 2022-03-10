//
//  Schedules.swift
//  TigreBus
//
//  Created by iOSLab12 on 10/03/22.
//

import SwiftUI

struct Schedules: View {
   @State var selected = ""
    
    var body: some View {
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
        }
    }
}

struct Schedules_Previews: PreviewProvider {
    static var previews: some View {
        Schedules()
    }
}
