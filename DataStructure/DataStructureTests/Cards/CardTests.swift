//
//  CardTests.swift
//  DataStructure
//
//  Created by Jigs Sheth on 3/22/16.
//  Copyright © 2016 jigneshsheth.com. All rights reserved.
//

import XCTest
@testable import DataStructure

class CardTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
      
      let input = (1...100).map{$0}
      print("Input \(input)")
      let final = Card.shuffle(input)
      XCTAssertNotEqual(input,final)
      print(final)
      
    }
    
//    func testPerformanceExample() {
//        // This is an example of a performance test case.
//        self.measureBlock {
//            // Put the code you want to measure the time of here.
//        }
//    }
  
}
