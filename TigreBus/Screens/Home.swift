//
//  Home.swift
//  TigreBus
//
//  Created by iOSLab12 on 10/03/22.
//

import SwiftUI

struct Home: View {
    var phoneNumber = "81-8329-4000"
    
    var description: String = """
La Universidad Autónoma de Nuevo León pone a disposición de sus estudiantes el sistema de transportación interna Tigrebus en diversos campus universitarios del área metropolitana de Monterrey con el propósito de facilitar el acceso rápido y seguro a las escuelas y facutlades.
"""
    
    var requirements: String = """
· Mostrar credencial de estudiante.
· Uso correcto del cubrebocas.
· Aplicar gel antibacterial.
· Temperatura debajo de los 37 °C.
· Respetar la sana distancia dejando libres los asientos señalados.
"""
    
    var rules: String = """
· Hacer fila para abordar.
· Ascender y descender sólo en las paradas oficiales.
· Dar preferencia a personas con discapacidad.
· No subir con bebidas y/o alimentos, ni fumar dentro de las unidades.
· No tirar basura.
· Respetar al operdador y a los demás usuarios.
· Dejar libre la cabina del conductor delimitada por la franja amarilla.
"""
    
    var address: String = """
Ciudad Universitaria, Unidad Norte, San Nicolás de los Garza 66451, Nuevo León
"""
    
    var body: some View {
        NavigationView {
            List {
                Text(description)
                
                CollapsibleView(
                    label: { Text("Requisitos para abordar") },
                    content: {
                        VStack {
                            Text(requirements)
                        }
                        .padding()
                    }
                )
                
                CollapsibleView(
                    label: { Text("Reglamento") },
                    content: {
                        VStack {
                            Text(rules)
                        }
                        .padding()
                    }
                )
                
                Section(header: Text("Enlaces relacionados")) {
                    Button(action: {
                        let twitterUri = "https://twitter.com.mx"
                        guard let url = URL(string: twitterUri) else { return }
                        UIApplication.shared.open(url)
                       }) {
                       Text("Página de Twitter")
                        .foregroundColor(.blue)
                    }
                }
                
                Section(header: Text("Teléfono")) {
                    Button(action: {
                        let phone = "tel://"
                        let phoneNumberformatted = phone + phoneNumber
                        guard let url = URL(string: phoneNumberformatted) else { return }
                        UIApplication.shared.open(url)
                       }) {
                       Text(phoneNumber)
                        .foregroundColor(.blue)
                    }
                }
                
                Section(header: Text("Dirección")) {
                    Text(address)
                }
            }.listStyle(InsetGroupedListStyle())
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.large)
            .toolbar(content: {
                Button(action: {
                    let phone = "tel://"
                    let phoneNumberformatted = phone + phoneNumber
                    guard let url = URL(string: phoneNumberformatted) else { return }
                    UIApplication.shared.open(url)
                   }) {
                    Image(systemName: "phone")
                    .foregroundColor(.blue)
                }
            })
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
