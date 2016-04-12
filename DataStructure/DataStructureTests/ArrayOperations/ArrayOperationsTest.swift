//
//  ArrayOperationsTest.swift
//  DataStructure
//
//  Created by Jigs Sheth on 4/11/16.
//  Copyright © 2016 jigneshsheth.com. All rights reserved.
//

import XCTest
@testable import DataStructure

class ArrayOperationsTest: XCTestCase {
  
  var operations:ArrayOperations?
  override func setUp() {
    super.setUp()
    operations = ArrayOperations()
  }
  
  override func tearDown() {
    super.tearDown()
    operations = nil
  }
  
  func testInsert() {
    operations?.insert(0, num: 10)
    operations?.insert(1, num: 11)
    operations?.insert(2, num: 12)
    operations?.insert(3, num: 13)
    operations?.insert(4, num: 14)
    operations?.insert(5, num: 15)
    operations?.insert(6, num: 16)
    
    operations?.display()
    XCTAssertEqual([10, 11, 12, 13, 14, 15, 16], (operations?.arrayOutput)!, "Insertion failed into an Array operation")
  }
  
  
  func testDelete() {
    operations?.insert(0, num: 10)
    operations?.insert(1, num: 11)
    operations?.insert(2, num: 12)
    operations?.insert(3, num: 13)
    operations?.insert(4, num: 14)
    operations?.insert(5, num: 15)
    operations?.insert(6, num: 16)
    
    operations?.display()
    operations?.delete(1)
    XCTAssertEqual([10, 12, 13, 14, 15, 16], (operations?.arrayOutput)!, "Deletion failed into an Array operation")
    
    
    operations?.display()
    operations?.delete(0)
    XCTAssertEqual([12, 13, 14, 15, 16], (operations?.arrayOutput)!, "Deletion failed into an Array operation")
    operations?.display()
    operations?.delete(4)
    XCTAssertEqual([12, 13, 14, 15], (operations?.arrayOutput)!, "Deletion failed into an Array operation")
    operations?.display()
    operations?.delete(2)
    XCTAssertEqual([12, 13,15], (operations?.arrayOutput)!, "Deletion failed into an Array operation")
    operations?.display()
    operations?.delete(2)
    XCTAssertEqual([12, 13], (operations?.arrayOutput)!, "Deletion failed into an Array operation")
    operations?.display()
    operations?.delete(0)
    XCTAssertEqual([13], (operations?.arrayOutput)!, "Deletion failed into an Array operation")
  }
  
  
  func testReverse() {
    operations?.insert(0, num: 10)
    operations?.insert(1, num: 11)
    operations?.insert(2, num: 12)
    operations?.insert(3, num: 13)
    operations?.insert(4, num: 14)
    operations?.insert(5, num: 15)
    operations?.insert(6, num: 16)
    
    operations?.display()
    operations?.delete(1)
    operations?.reverse()
    XCTAssertEqual([10,12, 13, 14, 15, 16].reverse(), (operations?.arrayOutput)!, "Reverse failed into an Array operation")
    
    
    operations?.display()
    operations?.delete(0)
    operations?.reverse()
    XCTAssertEqual([10, 12, 13, 14, 15], (operations?.arrayOutput)!, "Reverse failed into an Array operation")
    operations?.display()
    operations?.delete(4)
    operations?.reverse()
    XCTAssertEqual([14, 13, 12, 10], (operations?.arrayOutput)!, "Reverse failed into an Array operation")
    operations?.display()
  }
  
  
  func testSelectionSort(){
    let array = ArrayOperations(input: [25,17,31,13,2])
    array.selectionSort()
    XCTAssertEqual([2, 13, 17, 25, 31], array.arrayOutput, "Selection sort failed \(#function)")
  }
  
  
  func testBubleSort(){
    let array = ArrayOperations(input: [25,17,31,13,2])
    array.bubleSort()
    XCTAssertEqual([2, 13, 17, 25, 31], array.arrayOutput, "BubleSort failed \(#function)")
  }
  
  
  
  
}
