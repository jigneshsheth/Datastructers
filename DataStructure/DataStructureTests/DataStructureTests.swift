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
		XCTAssertEqual(reverseNum(1534236469),0)
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
		printPrimeNumbers(limit: 100)
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
		printBinary(num: 64)
  }
  
  func testPairOfTwo() {
    let input = [2,3,5,5,6,4,9,8,9,2,1,7,11]
		let result = pairOfTwoNumber(numbers: input, sum: 10)
    print("results:: \(result)")
    XCTAssertTrue(result.count == 6)
  }
  
  
  func testDynamicFibonacci(){
    //fib 93 will crash.
//    print("Dynamic Fibonacci: \(dynamicFibonacci(92))")
    let fib50  = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170, 1836311903, 2971215073, 4807526976, 7778742049, 12586269025]
    let longestFib92 = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170, 1836311903, 2971215073, 4807526976, 7778742049, 12586269025, 20365011074, 32951280099, 53316291173, 86267571272, 139583862445, 225851433717, 365435296162, 591286729879, 956722026041, 1548008755920, 2504730781961, 4052739537881, 6557470319842, 10610209857723, 17167680177565, 27777890035288, 44945570212853, 72723460248141, 117669030460994, 190392490709135, 308061521170129, 498454011879264, 806515533049393, 1304969544928657, 2111485077978050, 3416454622906707, 5527939700884757, 8944394323791464, 14472334024676221, 23416728348467685, 37889062373143906, 61305790721611591, 99194853094755497, 160500643816367088, 259695496911122585, 420196140727489673, 679891637638612258, 1100087778366101931, 1779979416004714189, 2880067194370816120, 4660046610375530309, 7540113804746346429]
		XCTAssertEqual([1, 1, 2, 3, 5, 8, 13, 21, 34, 55], dynamicFibonacci(num: 10))
		XCTAssertEqual(fib50, dynamicFibonacci(num: 50))
		XCTAssertEqual(longestFib92, dynamicFibonacci(num: 92))
    
//    let stopWatch = StopClock()
//    stopWatch.startClock()
		XCTAssertEqual(10946, fibonacci(num: 20))
		XCTAssertEqual(55, fibonacci(num: 9))
    
//    stopWatch.stopClock()
  }
  
  
  func testDynamicFactorial(){
    let expectedResult = [1,1,2,6,24,120,720,5040,40320,362880,3628800]
    var result:[Int] = []
    for i in 0...10 {
			result.append(dynamicFactorial(number: i))
    }
    XCTAssertEqual(expectedResult,result)
  }
  
  
  
  
}
