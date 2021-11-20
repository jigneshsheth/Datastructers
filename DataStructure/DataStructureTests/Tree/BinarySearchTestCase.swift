//
//  BinarySearchTestCase.swift
//  DataStructureTests
//
//  Created by Jigs Sheth on 11/20/21.
//  Copyright © 2021 jigneshsheth.com. All rights reserved.
//

import XCTest
@testable import DataStructure

class BinarySearchTestCase: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    func test_binarySearch() throws {
			let array = [1,5,18,32,34,40,43,55,67,69,70]
			XCTAssertEqual(3, array.binarySearch(for: 32))
			XCTAssertEqual(1, array.binarySearch(for: 5))
			XCTAssertEqual(6, array.binarySearch(for: 43))
			XCTAssertEqual(nil, array.binarySearch(for: 90))
			XCTAssertEqual(nil, array.binarySearch(for: 33))
		}

	
	func test_findIndices() throws {
		let array = [1,5,6,6,6,6,6,55,67,69,70]
		XCTAssertEqual(findIndices(of: 6, in: array),2..<7)
		XCTAssertEqual(findIndices(of: 5, in: array),1..<2)
	}

	func test_findIndicesWithBinarySearch() throws {
		let array = [1,5,6,6,6,6,6,55,67,69,70]
		XCTAssertEqual(findIndicesWithBinarySearch(of:6,in: array),2..<7)
		XCTAssertEqual(findIndicesWithBinarySearch(of:5,in: array),1..<2)
	}
   
}
