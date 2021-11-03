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
		let string2 = "CBA"
    XCTAssertTrue(stringPermutation(string1, string2: string2))
		XCTAssertTrue(stringPermutationWithDictionary(string1: string1, string2: string2))
    string1 += "D"
    XCTAssertFalse(stringPermutation(string1, string2: string2))
		XCTAssertFalse(stringPermutationWithDictionary(string1: string1, string2: string2))
    
  }
  
  func testPerformanceExample() {
    // This is an example of a performance test case.
    self.measure {
      // Put the code you want to measure the time of here.
    }
  }
  
  
  func testNumberToWords(){
		XCTAssertEqual("OneHundredThirtyThree",NumberToWords.numberToWords(123))
  }
  
  func testCountCharInString(){
    XCTAssertEqual(0,countCharactersInString("ABC", char: "D"))
    XCTAssertEqual(1,countCharactersInString("ABC", char: "A"))
    XCTAssertEqual(5,countCharactersInString("ABCAAAA", char: "A"))
    XCTAssertEqual(0,countCharactersInString("ABC", char: "a"))
    XCTAssertEqual(2,countCharactersInString("aaABC", char: "a"))
    XCTAssertEqual(1,countCharactersInString("ABCa", char: "A"))
  }
  
  
  
  func testReverseWord() {
		XCTAssertEqual("busy is Jignesh",reverseWords("Jignesh is busy"))
  }

  
  func testCountSubString() {
		XCTAssertEqual(4,countSubStringInString(str: "ThisisBadBadBadProgramming Bad a", subStr: "Bad"))
		XCTAssertEqual(5,countSubStringInString(str: "ThisisBadBadBadProgrammingBadads", subStr: "ad"))

  }
  
}

