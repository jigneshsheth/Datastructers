//
//  LongestSubstringTest.swift
//  DataStructureTests
//
//  Created by Jigs Sheth on 11/2/21.
//  Copyright © 2021 jigneshsheth.com. All rights reserved.
//

import XCTest
@testable import DataStructure

class LongestSubstringTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
      
			XCTAssertEqual(LongestSubstring.lengthOfLongestSubstring("abcabcbb"), 3)
			XCTAssertEqual(LongestSubstring.lengthOfLongestSubstring("bbbbb"), 1)
			XCTAssertEqual(LongestSubstring.lengthOfLongestSubstring("pwwkew"), 3)
			XCTAssertEqual(LongestSubstring.lengthOfLongestSubstring(""), 0)
			XCTAssertEqual(LongestSubstring.lengthOfLongestSubstring(" "), 1)
			XCTAssertEqual(LongestSubstring.lengthOfLongestSubstring("aa"), 1)
			XCTAssertEqual(LongestSubstring.lengthOfLongestSubstring("au"), 2)
			XCTAssertEqual(LongestSubstring.lengthOfLongestSubstring("dvdf"), 3)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
