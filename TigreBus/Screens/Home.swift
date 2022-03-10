//
//  Home.swift
//  TigreBus
//
//  Created by iOSLab12 on 10/03/22.
//

import SwiftUI

struct Home: View {
    var description: String = """
El TigreBús es el sistema de transporte interno que ofrece la Universidad Autónoma de Nuevo León a sus alumnos. El servicio es de manera gratuita y cuenta con cuatro distintos recorridos en sus campus: Ciudad Universitaria, Mederos, Campus Ciencias Agropecuarias y Campus de la Salud.
"""
    
    var body: some View {
        NavigationView {
            List {
                Text(description)
                
                Section(header: Text("Horarios de TIGREBUS de autobús")) {
                    Text("La ruta de la línea TIGREBUS de autobús opera los todos los días. Horario regular de operación: 6:45 - 21:55")
                    
                    ScheduleTableView()
                }
                
                Section(header: Text("Preguntas frecuentes de la línea TIGREBUS")) {
                    Text("¿A qué hora comienza a funcionar la línea TIGREBUS de autobús?")
                        .font(Font.body.bold())
                    Text("La línea TIGREBUS comienza a operar a las en 6:45 los domingo, lunes, martes, miércoles, jueves, viernes, sábado.")
                }
                
                Section {
                    Text("¿A qué hora deja de funcionar la línea TIGREBUS autobús?")
                        .font(Font.body.bold())
                    Text("La línea TIGREBUS deja de operar a las 21:55 los domingo, lunes, martes, miércoles, jueves, viernes, sábado.")
                }
            }.listStyle(InsetGroupedListStyle())
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
