//
//  SelectableScheduleView.swift
//  TigreBus
//
//  Created by iOSLab12 on 11/03/22.
//

import SwiftUI

struct SelectableScheduleView: View {
    @State var selected: String
    var entryList: Array<ScheduleEntry>
    
    init(list: Array<ScheduleEntry>) {
        entryList = list
        _selected = State(initialValue: list[0].title)
    }
    
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
            
            let selectedEntry = entryList.filter{ $0.title == selected }.first
            
            if selectedEntry != nil {
                Text(selectedEntry!.content)
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
        
        SelectableScheduleView(list: test)
    }
}
