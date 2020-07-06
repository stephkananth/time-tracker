//
//  Logger.swift
//  TimeTracker
//
//  Created by Steph Ananth on 7/6/20.
//  Copyright © 2020 Steph K. Ananth. All rights reserved.
//

import Foundation

struct Logger {
    static func log(className: String, methodName: String, message: String? = nil) {
        let log = getLogMessage(className: className, methodName: methodName, message: message)
        print(log)
    }

    internal static func getLogMessage(className: String, methodName: String, message: String? = nil) -> String {
        guard let message = message else { return "\(className) > \(methodName)" }
        return "\(className) > \(methodName): \(message)"
    }
}
