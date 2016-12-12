//
//  calculatorUITests.swift
//  calculatorUITests
//
//  Created by Petri W on 08/11/2016.
//  Copyright © 2016 Petri W. All rights reserved.
//

import XCTest
import UIKit


class calculatorUITests: XCTestCase {
    
    let app = XCUIApplication()
    
    
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testButtonCount(){
        XCTAssertEqual(app.buttons.count,14,"Shuld be 14")
    }
    func testInsertText() {
        app.buttons["9"].tap()
        app.buttons ["8"].tap()
        app.buttons ["7"].tap()
       XCTAssertEqual(app.staticTexts["numberField"].label, "0987", "Should be 11")
    }
    func testClearText(){
       
        app.buttons ["9"].tap()
        app.buttons ["8"].tap()
        app.buttons ["7"].tap()
        app.buttons ["C"].tap()
        XCTAssertEqual(app.staticTexts["numberField"].label, "0", "Should be 0")
        
        
        
    }
    
    
}

extension XCUIElement{
    func tapAtPosition(position: CGPoint) {
        let cooridnate = self.coordinate(withNormalizedOffset: CGVector(dx: 0, dy: 0)).withOffset(CGVector(dx: position.x, dy: position.y))
        cooridnate.tap()
    }
}
