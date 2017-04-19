//
//  calculatorTests.swift
//  calculatorTests
//
//  Created by Petri Wunsch  on 12/12/2016.
//  Copyright © 2016 Petri W. All rights reserved.
//

import XCTest
@testable import calculator
class calculatorTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
       
        calculator.ViewController.tapped0(ViewController)
       
      
    
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let  vc = storyboard.instantiateViewControllerWithIdentifier("ViewController") as UIViewController
        let 
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    
    }
    

