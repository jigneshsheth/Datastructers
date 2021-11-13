//
//  QueueArrayTest.swift
//  DataStructureTests
//
//  Created by Jigs Sheth on 11/13/21.
//  Copyright © 2021 jigneshsheth.com. All rights reserved.
//

import XCTest
@testable import DataStructure

class QueueTest: XCTestCase {

		var queue = QueueArray<String>()
	  var queueStack = QueueStack<String>()
	
    override func setUpWithError() throws {
			queue.enqueue("Tesla")
			queue.enqueue("Nissan")
			queue.enqueue("BMW")
			queue.enqueue("Nio")
			
			queueStack.enqueue("Tesla")
			queueStack.enqueue("Nissan")
			queueStack.enqueue("BMW")
			queueStack.enqueue("Nio")
		}

    override func tearDownWithError() throws {
    }

    func test_enqueueArray() throws {
			XCTAssertEqual(queue.peek, "Tesla")
		}
	
	func test_denqueueArray() throws {
		XCTAssertEqual(queue.dequeue(), "Tesla")
		XCTAssertEqual(queue.peek, "Nissan")
		XCTAssertEqual(queue.dequeue(), "Nissan")
		XCTAssertEqual(queue.dequeue(), "BMW")
		XCTAssertEqual(queue.dequeue(), "Nio")
		XCTAssertTrue(queue.isEmpty)
	}
	
	func test_enqueueStack() throws {
		XCTAssertEqual(queueStack.peek, "Tesla")
	}

func test_denqueueStack() throws {
	XCTAssertEqual(queueStack.dequeue(), "Tesla")
	XCTAssertEqual(queueStack.peek, "Nissan")
	XCTAssertEqual(queueStack.dequeue(), "Nissan")
	XCTAssertEqual(queueStack.dequeue(), "BMW")
	XCTAssertEqual(queueStack.dequeue(), "Nio")
	XCTAssertTrue(queueStack.isEmpty)
}
  

}
