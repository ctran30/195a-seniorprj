//
//  Home.swift
//  enginears
//
//  Created by Connie Tran on 3/16/20.
//  Copyright © 2020 Connie Tran. All rights reserved.
//

import SwiftUI

struct Home: Hashable, Codable {
    var username: String
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case lab = "Lab Forums"
        case schedules = "Schedules"
        case matching = "Students You Match With"
        case study = "Study Groups"
        case events = "Events"
    }
    
}


