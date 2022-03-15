//
//  ScheduleTableView.swift
//  TigreBus
//
//  Created by iOSLab12 on 10/03/22.
//

import SwiftUI

struct Schedule: Identifiable {
    let dayName: String
    let time: String
    let id = UUID()
}

struct ScheduleTableView: View {
    
    private var schedules = [
        Schedule(dayName: "Monday", time: "6:45 - 21:55"),
        Schedule(dayName: "Tuesday", time: "6:45 - 21:55"),
        Schedule(dayName: "Wednesday", time: "6:45 - 21:55"),
        Schedule(dayName: "Thursday", time: "6:45 - 21:55"),
        Schedule(dayName: "Friday", time: "6:45 - 21:55"),
        Schedule(dayName: "Saturday", time: "6:45 - 21:55"),
        Schedule(dayName: "Sunday", time: "6:45 - 21:55"),
    ]
    
    var body: some View {
        VStack {
            HStack {
                Text("Day")
                    .font(Font.body.bold())
                Spacer()
                Text("Schedule")
                    .font(Font.body.bold())
            }
            VStack {
                ForEach(schedules, id: \.id) { schedule in
                    HStack {
                        Text("\(schedule.dayName)")
                        Spacer()
                        Text("\(schedule.time)")
                    }
                }
            }
        }
    }
}

struct ScheduleTableView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleTableView()
    }
}
