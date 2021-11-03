//
//  FindMedianSortedArrayTest.swift
//  DataStructureTests
//
//  Created by Jigs Sheth on 11/2/21.
//  Copyright © 2021 jigneshsheth.com. All rights reserved.
//

import XCTest
@testable import DataStructure

class FindMedianSortedArrayTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSortedArray() throws {
			XCTAssertEqual(FindMedianSortedArray.mergeSortedArrays([2,5,7,21],[3,7,9,20]), [2,3,5,7,7,9,20,21])
			XCTAssertEqual(FindMedianSortedArray.mergeSortedArrays([2,3,5,10],[3,7,9,20]), [2,3,3,5,7,9,10,20])
			XCTAssertEqual(FindMedianSortedArray.mergeSortedArrays([2,5,7,21],[3,7,9,20]), [2,3,5,7,7,9,20,21])
		}
	
	
	func testMedianArray() throws {
		XCTAssertEqual(FindMedianSortedArray.findMedianSortedArrays([2,5,7,21],[3,7,9,20]),7.0)
		XCTAssertEqual(FindMedianSortedArray.findMedianSortedArrays([2,3,5,10],[3,7,9,20]), 6.0)
		XCTAssertEqual(FindMedianSortedArray.findMedianSortedArrays([2,5,7,21],[3,7,9,20]), 7.0)

		XCTAssertEqual(FindMedianSortedArray.findMedianSortedArrays([1,2],[3,4]), 2.5)

		XCTAssertEqual(FindMedianSortedArray.findMedianSortedArrays([1,3],[2]), 2.0)

		XCTAssertEqual(FindMedianSortedArray.findMedianSortedArrays([0,0],[0,0]), 0.0)
		XCTAssertEqual(FindMedianSortedArray.findMedianSortedArrays([],[1]), 1.0)
		XCTAssertEqual(FindMedianSortedArray.findMedianSortedArrays([2],[]), 2.0)
	}

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
