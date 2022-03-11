//
//  SelectableScheduleView.swift
//  TigreBus
//
//  Created by iOSLab12 on 11/03/22.
//

import SwiftUI

struct SelectableScheduleView: View {
    @State var selected = "Ruta"
    
    var entryList: Array<ScheduleEntry>
    
    var body: some View {
        VStack {
            Menu {
                ForEach(entryList, id: \.id) { entry in
                    Button {
                        selected = entry.title
                    } label: {
                        Text(entry.title)
                    }
                }
            } label: {
                 Text(selected)
                 Image(systemName: "tag.circle")
            }
            
            if entryList.filter{ $0.title == selected }.first != nil {
                Text(entryList.filter{ $0.title == selected }.first!.content)
            }
        }
    }
}

struct SelectableScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        let test = [
            ScheduleEntry(title: "Hello", content: "Hello world"),
            ScheduleEntry(title: "Bye", content: "Bye world")
        ]
        
        SelectableScheduleView(entryList: test)
    }
}
