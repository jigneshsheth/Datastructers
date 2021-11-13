//
//  SortingAlogrithmsTest.swift
//  DataStructure
//
//  Created by Jigs Sheth on 4/11/16.
//  Copyright © 2016 jigneshsheth.com. All rights reserved.
//

import XCTest
@testable import DataStructure

class SortingAlgorithmsTest: XCTestCase {
  
  var operations:SortingAlgorithms?
  override func setUp() {
    super.setUp()
    operations = SortingAlgorithms()
  }
  
  override func tearDown() {
    super.tearDown()
    operations = nil
  }
  
  func testInsert() {
		operations?.insert(position:0, num: 10)
		operations?.insert(position:1, num: 11)
		operations?.insert(position:2, num: 12)
		operations?.insert(position:3, num: 13)
		operations?.insert(position:4, num: 14)
		operations?.insert(position:5, num: 15)
		operations?.insert(position:6, num: 16)
    
    operations?.display()
    XCTAssertEqual([10, 11, 12, 13, 14, 15, 16], (operations?.arrayOutput)!, "Insertion failed into an Array operation")
  }
  
  
  func testDelete() {
		operations?.insert(position:0, num: 10)
		operations?.insert(position:1, num: 11)
		operations?.insert(position:2, num: 12)
		operations?.insert(position:3, num: 13)
		operations?.insert(position:4, num: 14)
		operations?.insert(position:5, num: 15)
		operations?.insert(position:6, num: 16)
    
    operations?.display()
		operations?.delete(position:1)
    XCTAssertEqual([10, 12, 13, 14, 15, 16], (operations?.arrayOutput)!, "Deletion failed into an Array operation")
    
    
    operations?.display()
		operations?.delete(position:0)
    XCTAssertEqual([12, 13, 14, 15, 16], (operations?.arrayOutput)!, "Deletion failed into an Array operation")
    operations?.display()
		operations?.delete(position:4)
    XCTAssertEqual([12, 13, 14, 15], (operations?.arrayOutput)!, "Deletion failed into an Array operation")
    operations?.display()
		operations?.delete(position:2)
    XCTAssertEqual([12, 13,15], (operations?.arrayOutput)!, "Deletion failed into an Array operation")
    operations?.display()
		operations?.delete(position:2)
    XCTAssertEqual([12, 13], (operations?.arrayOutput)!, "Deletion failed into an Array operation")
    operations?.display()
		operations?.delete(position: 0)
    XCTAssertEqual([13], (operations?.arrayOutput)!, "Deletion failed into an Array operation")
  }
  
  
  func testReverse() {
		operations?.insert(position:0, num: 10)
		operations?.insert(position:1, num: 11)
		operations?.insert(position:2, num: 12)
    operations?.insert(position:3, num: 13)
    operations?.insert(position:4, num: 14)
    operations?.insert(position:5, num: 15)
    operations?.insert(position:6, num: 16)
    
    operations?.display()
		operations?.delete(position: 1)
    operations?.reverse()
    XCTAssertEqual([10,12, 13, 14, 15, 16].reversed(), (operations?.arrayOutput)!, "Reverse failed into an Array operation")
    
    
    operations?.display()
		operations?.delete(position: 0)
    operations?.reverse()
    XCTAssertEqual([10, 12, 13, 14, 15], (operations?.arrayOutput)!, "Reverse failed into an Array operation")
    operations?.display()
		operations?.delete(position: 4)
    operations?.reverse()
    XCTAssertEqual([14, 13, 12, 10], (operations?.arrayOutput)!, "Reverse failed into an Array operation")
    operations?.display()
  }
  
  
  func testSelectionSort(){
    let array = SortingAlgorithms(input: [25,17,31,13,2])
    array.selectionSort()
    XCTAssertEqual([2, 13, 17, 25, 31], array.arrayOutput, "Selection sort failed \(#function)")
  }
  
  
  func testBubleSort(){
    let array = SortingAlgorithms(input: [25,17,31,13,2])
    array.bubbleSort()
    XCTAssertEqual([2, 13, 17, 25, 31], array.arrayOutput, "BubleSort failed \(#function)")
  }
	
	func test_BubleSort() throws{
		var array = [25,17,31,13,2]
		SortingAlgorithms().bubbleSort(&array)
		XCTAssertEqual([2, 13, 17, 25, 31], array, "BubleSort failed \(#function)")
		
		var array1 = [25]
		SortingAlgorithms().bubbleSort(&array1)
		XCTAssertEqual([25], array1, "BubleSort failed \(#function)")

		var array2 = [25,45,2,4,65]
		SortingAlgorithms().bubbleSort(&array2)
		XCTAssertEqual([2,4,25,45,65], array2, "BubleSort failed \(#function)")

	}
	
	func test_SelectionSort() throws{
		var array = [25,17,31,13,2]
		SortingAlgorithms().selectionSort(&array)
		XCTAssertEqual([2, 13, 17, 25, 31], array, "selectionSort failed \(#function)")
		
		var array1 = [25]
		SortingAlgorithms().selectionSort(&array1)
		XCTAssertEqual([25], array1, "selectionSort failed \(#function)")

		var array2 = [25,45,2,4,65]
		SortingAlgorithms().selectionSort(&array2)
		XCTAssertEqual([2,4,25,45,65], array2, "selectionSort failed \(#function)")

	}
	
	
	func test_InsertionSort() throws{
		var array = [25,17,31,13,2]
		SortingAlgorithms().insertionSort(&array)
		XCTAssertEqual([2, 13, 17, 25, 31], array, "insertionSort failed \(#function)")
		
		var array1 = [25]
		SortingAlgorithms().insertionSort(&array1)
		XCTAssertEqual([25], array1, "insertionSort failed \(#function)")

		var array2 = [25,45,2,4,65]
		SortingAlgorithms().insertionSort(&array2)
		XCTAssertEqual([2,4,25,45,65], array2, "insertionSort failed \(#function)")

	}
  
  
  func testInsertionSort(){
    let array = SortingAlgorithms(input: [25,17,31,13,2])
    array.insertionSort()
    XCTAssertEqual([2, 13, 17, 25, 31], array.arrayOutput, "BubleSort failed \(#function)")
  }
  
  func testSecondLargestElementInArray(){
		XCTAssertEqual(51, try! findSecondLargestElement(input: [45, 51, 28, 75, 49, 42]))
		XCTAssertEqual(975, try! findSecondLargestElement(input: [985, 521, 975, 831, 479, 861]))
		XCTAssertEqual(9459, try! findSecondLargestElement(input: [9459, 9575, 5692, 1305, 1942, 9012]))
		XCTAssertEqual(74562, try! findSecondLargestElement(input: [47498, 14526, 74562, 42681, 75283, 45796]))
  }
  
  
}
