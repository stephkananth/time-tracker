//
//  Entry.swift
//  TimeTracker
//
//  Created by Steph Ananth on 7/7/20.
//  Copyright © 2020 Steph K. Ananth. All rights reserved.
//

import Foundation

struct Entry {
    private(set) var time: Date
    private(set) var name: String
    private(set) var category: String?

    func getTimeString() -> String {
        Logger.log(className: "Entry", methodName: "getTimeString")
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm"
        dateFormatter.timeZone = .autoupdatingCurrent
        return dateFormatter.string(from: time)
    }
}
