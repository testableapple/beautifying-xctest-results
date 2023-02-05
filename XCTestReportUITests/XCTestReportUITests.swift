//
//  XCTestReportUITests.swift
//  XCTestReportUITests
//
//  Created by Alexey Alter Pesotskiy  on 2/5/23.
//

import XCTest

final class XCTestReportUITests: XCTestCase {
    
    private var app = XCUIApplication()

    override func setUp() {
        app.launch()
    }
    
    func testWillPass() {
        app.images["gamecontroller"].tap()
        let username = app.staticTexts["username"].label
        XCTAssertNotEqual("", username)
    }
    
    func testWillFail() {
        app.images["gamecontroller"].tap()
        let actualUsername = app.staticTexts["username"].label
        XCTAssertEqual("Frodo", actualUsername)
    }
}
