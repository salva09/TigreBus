//
//  Schedules.swift
//  TigreBus
//
//  Created by iOSLab12 on 10/03/22.
//

import SwiftUI

struct Schedules: View {
    @State var selected = "Ruta"
    private var scheduleInCampus = [
        ScheduleEntry(title: "Ciudad Universitaria", content: "Lunes a Viernes de 6:45 am a 5:00 pm"),
        ScheduleEntry(title: "Ciencias Agropecuarias", content: "Lunes a Viernes de 6:45 am a 8:30 pm"),
        ScheduleEntry(title: "Ciencias de la Salud", content: "Lunes a Viernes, Tigrevan de 7:00 am a 2:00 pm y Tigrebus de 6:45 am a 9:15 pm"),
        ScheduleEntry(title: "Mederos", content: "Lunes a Viernes de 6:45 am a 9:15 pm, sábados de 8:00 am a 1:00 pm"),
        ScheduleEntry(title: "Facultad de Ineniería Civil al Instituto de Ingeniería Civil", content: "Lunes a Viernes, Tigrevan 8:00 am, 11:00 am, 2:00pm y 4:00 pm")
    ]
    private var scheduleToCampus = [
        ScheduleEntry(title: "De Ciudad Universitaria a Mederos", content: "Lunes a Viernes 6:15 am, 11:00 am y 4:00 pm"),
        ScheduleEntry(title: "De Ciudad Universitaria a Ciencias de la Salud y Ciencias Agropecuarias", content: "Lunes a Viernes 6:15 am"),
        ScheduleEntry(title: "De Mederos a Ciudad Universitaria", content: "Lunes a Viernes 1:00 pm, 6:00 pm y 9:15 pm"),
        ScheduleEntry(title: "De Ciencias de la Salud a Ciudad Universitaria", content: "Lunes a Viernes, Tigrevan 2:00 pm y Tigrebus 9:15 pm"),
        ScheduleEntry(title: "De Ciencas Agropecuarias a Ciudad Universitaria", content: "Lunes a Viernes 8:30 pm")
    ]
    
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
