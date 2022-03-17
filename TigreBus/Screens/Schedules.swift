//
//  Schedules.swift
//  TigreBus
//
//  Created by iOSLab12 on 10/03/22.
//

import SwiftUI

struct Schedules: View {
    @State var selected = "Ruta"

    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Servicio en campus")) {
                    SelectableScheduleView(list: scheduleInCampus)
                }
                
                Section(header: Text("Salidas a campus")) {
                    SelectableScheduleView(list: scheduleToCampus)
                }
            }.listStyle(InsetGroupedListStyle())
            .navigationTitle("Schedules")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct Schedules_Previews: PreviewProvider {
    static var previews: some View {
        Schedules()
    }
}
