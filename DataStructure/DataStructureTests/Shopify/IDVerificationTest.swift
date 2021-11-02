//
//  IDVerificationTest.swift
//  DataStructureTests
//
//  Created by Jigs Sheth on 11/1/21.
//  Copyright © 2021 jigneshsheth.com. All rights reserved.
//

import XCTest
@testable import DataStructure

class IDVerificationTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
	
		/// Valid ID = CAJI202002196
    func testValidID() throws {
			let result = IDCodeVerification.checkValidID(firstName: "Jigarius", lastName: "Caesar", idCode: "CAJI202002196")
			XCTAssertEqual(result, "PASS")
		
			XCTAssertEqual(IDCodeVerification.checkValidIDAlt(firstName: "Jigarius", lastName: "Caesar", idCode: "CAJI202002196"), "PASS")
			
    }

		/// Valid ID = CAJI202002196
		func testValidIDFailed() throws {
			let result = IDCodeVerification.checkValidID(firstName: "Jigarius", lastName: "Caesar", idCode: "CAJI202002199")
			XCTAssertNotEqual(result, "PASS")
			XCTAssertNotEqual(IDCodeVerification.checkValidIDAlt(firstName: "Jigarius", lastName: "Caesar", idCode: "CAJI202002199"), "PASS")
		}
	
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
