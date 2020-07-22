//
//  Hours_CalculatorTests.swift
//  Hours CalculatorTests
//
//  Created by Sai Raghu Varma Kallepalli on 22/7/20.
//  Copyright © 2020 Sai Raghu Varma Kallepalli. All rights reserved.
//

import XCTest

class Hours_CalculatorTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testGetHours() {
        XCTAssert(Wage.calWage(forWage: 10, forCost: 10) == 1)
        XCTAssert(Wage.calWage(forWage: 25, forCost: 100) == 4)
        XCTAssert(Wage.calWage(forWage: 11, forCost: 100) == 10)
        
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
