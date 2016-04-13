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
  
  
  func testReverseString(){
    XCTAssertEqual(reverseString("123"), "321")
  }
  
  func testReverseNumber(){
    var input = 1234
    reverseNumber(&input)
    XCTAssertEqual(input,4321)
    input = 56880
    reverseNumber(&input)
    XCTAssertEqual(input,08865)
    
    input = 0987654432
    reverseNumber(&input)
    XCTAssertEqual(input,234456789)
  }
  
  func testReverseNumber1(){
    XCTAssertEqual(reverseNum(1234),4321)
    XCTAssertEqual(reverseNum(123456789),987654321)
    XCTAssertEqual(reverseNum(123400),004321)
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
  
  func testPrime(){
    XCTAssert(!isPrime(0))
    XCTAssert(!isPrime(1))
    XCTAssert(!isPrime(2))
    XCTAssert(isPrime(3))
    XCTAssert(!isPrime(4))
    XCTAssert(isPrime(5))
    XCTAssert(isPrime(7))
    XCTAssert(isPrime(11))
    XCTAssert(isPrime(13))
    printPrimeNumbers(100)
  }
  
  
  func testPowerOfTwo() {
    XCTAssertFalse(isPowerOfTwo(10))
    XCTAssertTrue(isPowerOfTwo(2))
    XCTAssertTrue(isPowerOfTwo(4))
    XCTAssertTrue(isPowerOfTwo(8))
    XCTAssertTrue(isPowerOfTwo(16))
    XCTAssertTrue(isPowerOfTwo(32))
    XCTAssertFalse(isPowerOfTwo(11))
    XCTAssertFalse(isPowerOfTwo(20))
    XCTAssertFalse(isPowerOfTwo(13))
  }
  
  func testBinaryPresentation(){
    printBinary(64)
  }
  
  func testPairOfTwo() {
    let input = [2,3,5,5,6,4,9,8,9,2,1,7,11]
    let result = pairOfTwoNumber(input, sum: 10)
    print("results:: \(result)")
    XCTAssertTrue(result.count == 6)
  }
  
  
  
  
  
}
