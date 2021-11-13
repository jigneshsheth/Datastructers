	//
	//  StackTest.swift
	//  DataStructureTests
	//
	//  Created by Jigs Sheth on 11/13/21.
	//  Copyright © 2021 jigneshsheth.com. All rights reserved.
	//

import XCTest
@testable import DataStructure

class StackTest: XCTestCase {
	
	
	var stack = Stack<Int>()
	
	override func setUpWithError() throws {
		stack.push(1)
		stack.push(2)
		stack.push(3)
		stack.push(4)
		stack.push(5)
	}
	
	func test_push() throws {
		XCTAssertEqual(stack.description, "1 2 3 4 5")
	}
	
	func test_pop() throws {
		XCTAssertEqual(stack.pop(), 5)
		XCTAssertEqual(stack.description, "1 2 3 4")
	}
	
	func test_peek() throws {
		XCTAssertEqual(stack.peek(), 5)
	}
	
	func test_isEmpty() throws {
		XCTAssertEqual(stack.isEmpty, false)
	}
	
	func test_initArray() throws {
		XCTAssertEqual(stack,Stack([1,2,3,4,5]))
	}
	
	func test_initArrayLiteral() throws {
		XCTAssertEqual(["Jigs","Kavita","Arya","Vraj"], Stack(["Jigs","Kavita","Arya","Vraj"]))
	}
}
