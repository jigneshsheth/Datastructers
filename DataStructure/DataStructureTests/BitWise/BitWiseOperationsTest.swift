//
//  BitWiseOperationsTest.swift
//  DataStructure
//
//  Created by Jigs Sheth on 4/25/16.
//  Copyright © 2016 jigneshsheth.com. All rights reserved.
//

import XCTest
@testable import DataStructure

class BitWiseOperationsTest: XCTestCase {
  
  override func setUp() {
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
  
  func testAddingTwoIntValues() {
		XCTAssertEqual(29,addTwoInt(a: 15, b: 14))
		XCTAssertEqual(47,addTwoInt(a:15, b: 32))
		XCTAssertNotEqual(29,addTwoInt(a:15, b: 32))
  }
  
  func testPerformanceExample() {
    // This is an example of a performance test case.
		self.measure {
      // Put the code you want to measure the time of here.
    }
  }
  
  func testCountOneBitInInt() {
		XCTAssertEqual(4, countNumberOfOne(num:15))
		XCTAssertEqual(2, countNumberOfOneOptimal(num:5))
		XCTAssertEqual(4, countNumberOfOneOptimal(num:15))
		XCTAssertEqual(3, countNumberOfOneOptimal(num:14))
  }
  
  
  
}
