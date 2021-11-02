//
//  TwoSumTest.swift
//  DataStructureTests
//
//  Created by Jigs Sheth on 11/2/21.
//  Copyright © 2021 jigneshsheth.com. All rights reserved.
//

import XCTest
@testable import DataStructure

class TwoSumTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testTwoSum_Efficient() throws {

			var nums = [2,7,11,15]
			var target = 9
			var result = [0,1]
			XCTAssertEqual(TwoSum().twoSum_Efficient(nums, target), result)

			nums = [3,2,4]
			target = 6
			result = [1,2]
			XCTAssertEqual(TwoSum().twoSum_Efficient(nums, target), result)
			
			nums = [3,3]
			target = 6
			result = [0,1]
			XCTAssertEqual(TwoSum().twoSum_Efficient(nums, target), result)

		}
	
	func testTwoSum() throws {

		var nums = [2,7,11,15]
		var target = 9
		var result = [0,1]
		XCTAssertEqual(TwoSum().twoSum(nums, target), result)

		nums = [3,2,4]
		target = 6
		result = [1,2]
		XCTAssertEqual(TwoSum().twoSum(nums, target), result)
		
		nums = [3,3]
		target = 6
		result = [0,1]
		XCTAssertEqual(TwoSum().twoSum(nums, target), result)

	}

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
