//
// Created by iOSLab12 on 17/03/22.
//

import Foundation

struct RouteEntry: Identifiable {
    let id = UUID()
    let name: String
    let route: Route
}