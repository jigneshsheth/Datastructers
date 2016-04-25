//
//  StringTests.swift
//  DataStructure
//
//  Created by Jigs Sheth on 4/24/16.
//  Copyright © 2016 jigneshsheth.com. All rights reserved.
//

import XCTest
@testable import DataStructure

class StringTests: XCTestCase {
  
  override func setUp() {
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
  
  func testPermutation() {
    var string1 = "ABC"
    var string2 = "CBA"
    XCTAssertTrue(stringPermutation(string1, string2: string2))
    XCTAssertTrue(stringPermutationWithDictionary(string1, string2: string2))
    string1 += "D"
    XCTAssertFalse(stringPermutation(string1, string2: string2))
    XCTAssertFalse(stringPermutationWithDictionary(string1, string2: string2))
    
  }
  
  func testPerformanceExample() {
    // This is an example of a performance test case.
    self.measureBlock {
      // Put the code you want to measure the time of here.
    }
  }
  
}
