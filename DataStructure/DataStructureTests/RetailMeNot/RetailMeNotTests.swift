//
//  RetailMeNotTests.swift
//  DataStructure
//
//  Created by Jigs Sheth on 3/30/16.
//  Copyright © 2016 jigneshsheth.com. All rights reserved.
//

import XCTest
@testable import DataStructure

class RetailMeNotTests: XCTestCase {
  
  override func setUp() {
    super.setUp()
  }
  
  override func tearDown() {
    super.tearDown()
  }
  
  func testFreeShipping() {
    var productPrices = [5,22,15,8]
		XCTAssertTrue((5,22) == calculateFreeShipping(productPrices: productPrices, freeShippingAmt: 25))
		XCTAssertFalse((5,8) == calculateFreeShipping(productPrices:productPrices, freeShippingAmt: 25))
    productPrices = [1,2,15,8]
		XCTAssertTrue((-1,-1) == calculateFreeShipping(productPrices:productPrices, freeShippingAmt: 25))
    let int1 = 60
    let int2 = 13
    print("binary \(int1 & int2)")
    
  }
  
  //    func testPerformanceExample() {
  //        // This is an example of a performance test case.
  //        self.measure {
  //            // Put the code you want to measure the time of here.
  //        }
  //    }
  
  
  func testPrintFizzBuzz(){
		printFizzBuzz(num:100)
  }
  
}
