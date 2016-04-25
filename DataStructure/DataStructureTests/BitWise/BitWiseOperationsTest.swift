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
    XCTAssertEqual(29,addTwoInt(15, b: 14))
    XCTAssertEqual(47,addTwoInt(15, b: 32))
    XCTAssertNotEqual(29,addTwoInt(15, b: 32))
  }
  
  func testPerformanceExample() {
    // This is an example of a performance test case.
    self.measureBlock {
      // Put the code you want to measure the time of here.
    }
  }
  
}
