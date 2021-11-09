//
//  LicenseKeyFormattingTest.swift
//  DataStructureTests
//
//  Created by Jigs Sheth on 11/9/21.
//  Copyright © 2021 jigneshsheth.com. All rights reserved.
//

import XCTest
@testable import DataStructure

class LicenseKeyFormattingTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
			
			XCTAssertEqual(LicenseKeyFormatting().licenseKeyFormatting("5F3Z-2e-9-w", 4), "5F3Z-2E9W")
			XCTAssertEqual(LicenseKeyFormatting().licenseKeyFormatting("2-4A0r7-4k", 3), "24-A0R-74K")
			XCTAssertEqual(LicenseKeyFormatting().licenseKeyFormatting("--a-a-a-a--", 2), "AA-AA")
}

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
