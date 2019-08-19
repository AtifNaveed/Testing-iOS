//
//  UnitTestMVVMTests.swift
//  UnitTestMVVMTests
//
//  Created by Atif on 15/08/2019.
//  Copyright © 2019 Atif. All rights reserved.
//

import XCTest
@testable import UnitTestMVVM

class UnitTestMVVMTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testLessThanHundredCell() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let model = Model(id: 0, name: "Abdullah", count: 10)
        let viewModel = ViewModel(model: model)
        XCTAssertEqual(model.name, viewModel.name)
        
        // Model Logic Testing
        XCTAssertEqual("Number of items are: \(model.count)", viewModel.detail)
        XCTAssertEqual(.none, viewModel.accessoryType)
    }
    
    func testGreaterThanHundredCell() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let model = Model(id: 0, name: "Abdullah", count: 110)
        let viewModel = ViewModel(model: model)
        
        // Model Logic Testing
        XCTAssertEqual("Count is greater than 100", viewModel.detail)
        XCTAssertEqual(.disclosureIndicator, viewModel.accessoryType)
    }


}
