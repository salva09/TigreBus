//
//  ScheduleEntry.swift
//  TigreBus
//
//  Created by iOSLab12 on 11/03/22.
//

import Foundation

struct ScheduleEntry: Identifiable {
    let title: String
    let content: String
    let id = UUID()
}
