	//
	//  StackChallengeTestCase.swift
	//  DataStructureTests
	//
	//  Created by Jigs Sheth on 11/13/21.
	//  Copyright © 2021 jigneshsheth.com. All rights reserved.
	//

import XCTest
@testable import DataStructure

func checkParentheses(_ string: String) -> Bool {
	var stack = Stack<Character>()
	for char in string {
		if char == "(" {
			stack.push(char)
		} else if char == ")" {
			if stack.isEmpty{
				return false
			} else {
				stack.pop()
			}
		}
	}
	return stack.isEmpty
}


final class StackChallengeTestCase: XCTestCase {
	func test_checkParens() {
		XCTAssertTrue( checkParentheses("()") )
	}
	
	func test_checkParens1() {
		XCTAssertTrue( checkParentheses("hello(world)()") )
	}
	
	func test_checkParens2() {
		XCTAssertFalse( checkParentheses("(hello world") )
	}
	
	func test_checkParens3() {
		XCTAssertFalse( checkParentheses("((())(meow)))()))") )
	}
	
}
