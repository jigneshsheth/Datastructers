//
//  DataStructureTests.swift
//  DataStructureTests
//
//  Created by Jigs Sheth on 3/16/16.
//  Copyright © 2016 jigneshsheth.com. All rights reserved.
//

import XCTest
@testable import DataStructure

class DataStructureTests: XCTestCase {
  
  override func setUp() {
    super.setUp()
  }
  
  override func tearDown() {
    super.tearDown()
  }
  
  func testAnagram() {
    XCTAssert(isAnagram(str1:"Mother In Law",str2: "Hitler Woman"))
    
    XCTAssert(isAnagram(str1:"keEp",str2: "peeK"))
    
    XCTAssert(isAnagram(str1:"SiLeNt CAT",str2: "LisTen AcT"))
    
    XCTAssert(isAnagram(str1:"Debit Card",str2: "Bad Credit"))
    
    XCTAssert(isAnagram(str1:"School MASTER",str2: "The ClassROOM"))
    
    XCTAssert(isAnagram(str1:"DORMITORY",str2: "Dirty Room"))
    
    XCTAssert(isAnagram(str1:"ASTRONOMERS",str2: "NO MORE STARS"))
    
    XCTAssert(!isAnagram(str1:"Toss", str2:"Shot"))
    
    XCTAssert(!isAnagram(str1:"joy",str2: "enjoy"))
  }
  
  
  func testFactorial(){
    XCTAssertEqual(factorial(-1), 0)
    XCTAssertEqual(factorial(0), 0)
    XCTAssertEqual(factorial(1), 1)
    XCTAssertEqual(factorial(2), 2)
    XCTAssertEqual(factorial(3), 6)
    XCTAssertEqual(factorial(5), 120)
  }
  
  func testPerformanceExample() {
    // This is an example of a performance test case.
    self.measureBlock {
      // Put the code you want to measure the time of here.
    }
  }
  
}
