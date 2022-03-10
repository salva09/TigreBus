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
                Section(header: Text("Dentro del campus")) {
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
                    
                    ScheduleTableView()
                }
                
                Section(header: Text("De campus a campus")) {
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
                    
                    ScheduleTableView()
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
