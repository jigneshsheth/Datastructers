	//
	//  AddTwoNumber_LinkedList_Test.swift
	//  DataStructureTests
	//
	//  Created by Jigs Sheth on 11/2/21.
	//  Copyright © 2021 jigneshsheth.com. All rights reserved.
	//

import XCTest
@testable import DataStructure

class AddTwoNumber_LinkedList_Test: XCTestCase {
	
	override func setUpWithError() throws {
			// Put setup code here. This method is called before the invocation of each test method in the class.
	}
	
	override func tearDownWithError() throws {
			// Put teardown code here. This method is called after the invocation of each test method in the class.
	}
	
	func testReverseList() throws {
		
		let expected = ListNode.createList([8,9,9,9,0,0,0,1])
		ListNode.printList(expected)
		
		guard let node = ListNode.reverseList(expected) else { return }
		
		ListNode.printList(node)
		
	}
	
	func testTwoSum() throws{
		let list1 = ListNode.createList([2,4,3])
		let list2 = ListNode.createList([5,6,4])
		let result = ListNode.createList([7,0,8])

		let resultList = AddTwoNumbers_LinkedList().addTwoNumbers(list1,list2)
		ListNode.printList(resultList)
		XCTAssertEqual(resultList,result)

	}
	
	
	func testTwoSum_test2() throws{
		let list1 = ListNode.createList([0])
		let list2 = ListNode.createList([0])
		let result = ListNode.createList([0])

		let resultList = AddTwoNumbers_LinkedList().addTwoNumbers(list1,list2)
		ListNode.printList(resultList)
		XCTAssertEqual(resultList,result)

	}
	
	
	func testTwoSum_test3() throws{
		let list1 = ListNode.createList([9,9,9,9,9,9,9])
		let list2 = ListNode.createList([9,9,9,9])
		let expected = ListNode.createList([8,9,9,9,0,0,0,1])

		let resultList = AddTwoNumbers_LinkedList().addTwoNumbers(list1,list2)
		ListNode.printList(resultList)
		XCTAssertEqual(resultList,expected)

	}
	
	func testTwoSum_test4() throws{
		let list1 = ListNode.createList([0,1])
		let list2 = ListNode.createList([0,1,2])
		let expected = ListNode.createList([0,2,2])

		let resultList = AddTwoNumbers_LinkedList().addTwoNumbers(list1,list2)
		ListNode.printList(resultList)
		XCTAssertEqual(resultList,expected)

	}
	
	func testTwoSum_test5() throws{
		let list1 = ListNode.createList([])
		let list2 = ListNode.createList([0,1])
		let expected = ListNode.createList([0,1])

		let resultList = AddTwoNumbers_LinkedList().addTwoNumbers(list1,list2)
		ListNode.printList(resultList)
		XCTAssertEqual(resultList,expected)

	}

	func testTwoSum_test6() throws{
		let list1 = ListNode.createList([9,9])
		let list2 = ListNode.createList([1])
		let expected = ListNode.createList([0,0,1])

		let resultList = AddTwoNumbers_LinkedList().addTwoNumbers(list1,list2)
		ListNode.printList(resultList)
		XCTAssertEqual(resultList,expected)

	}

	
	func testPerformanceExample() throws {
			// This is an example of a performance test case.
		self.measure {
				// Put the code you want to measure the time of here.
		}
	}
	
}
