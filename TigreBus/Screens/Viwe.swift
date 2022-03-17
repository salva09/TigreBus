//
//  Viwe.swift
//  TigreBus
//
//  Created by iOSLab12 on 16/03/22.
//

import SwiftUI

struct Viwe: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
            Text("Hello, World!")
            Text("Hello, World!")
            Button {
            } label: {
                Text("Botón")
            }
        }
    }
}

struct Viwe_Previews: PreviewProvider {
    static var previews: some View {
        Viwe()
    }
}
