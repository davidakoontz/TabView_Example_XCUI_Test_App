//
//  TabView_Example.swift
//  TabView_Example_TestUITests
//
//  Created by David on 2/10/21.
//

import XCTest

class TabView_Example: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testHelloWorld() throws {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.

        let app = XCUIApplication()
        app.launch()

        //print(app.debugDescription)
        
        let element1 = app.staticTexts["Hello, World #1!"]
        XCTAssertEqual(element1.label, "Hello, World #1!")
    }

    func testTapButtonWorld3() {
        let app = XCUIApplication()
        app.launch()

        let element1 = app.staticTexts["Hello, World #1!"]
        XCTAssertEqual(element1.label, "Hello, World #1!")
        //print(app.debugDescription)
        
        let tabBar = app.tabBars["Tab Bar"]
        // all the buttons have the name "3.square" - need an ID - have to use symbol name - access ID does NOT work!
        
        tabBar.buttons["3.square"].tap()
        //print(app.debugDescription)
        let element3 = app.staticTexts["Hello, World #3!"]
        XCTAssertEqual(element3.label, "Hello, World #3!")
    }
}
