//
//  LoggerTests.swift
//  LoggerTests
//
//  Created by Steph Ananth on 7/6/20.
//  Copyright © 2020 Steph K. Ananth. All rights reserved.
//

import XCTest
@testable import TimeTracker

class LoggerTests: XCTestCase {
    func testGetLogMessageWithoutMessage() {
        let log = Logger.getLogMessage(className: "className", methodName: "methodName")
        XCTAssertEqual(log, "className > methodName")
    }

    func testGetLogMessageWithMessage() {
        let log = Logger.getLogMessage(className: "className", methodName: "methodName", message: "message")
        XCTAssertEqual(log, "className > methodName - message")
    }
}
