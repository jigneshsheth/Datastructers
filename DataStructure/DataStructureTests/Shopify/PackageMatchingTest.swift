	//
	//  PackageMatchingTest.swift
	//  DataStructureTests
	//
	//  Created by Jigs Sheth on 12/29/21.
	//  Copyright © 2021 jigneshsheth.com. All rights reserved.
	//

import XCTest
@testable import DataStructure

class PackageMatchingTest: XCTestCase {
	
	var packageMatching: PackageMatching?
	override func setUpWithError() throws {
		packageMatching = PackageMatching()
	}
	
	override func tearDownWithError() throws {
		packageMatching = nil
	}
	
	fileprivate func compareResults(_ input: [String], _ expectedOutput: inout [String]) {
		let packages = packageMatching!.getPackages(items:input)
		for package in packages {
			if let index = expectedOutput.firstIndex(of: package.description) {
				expectedOutput.remove(at: index)
			}
		}
		print(packages)
		print(expectedOutput)
	}
	
	func testBasicPackageMatching() throws {
		let input = ["Cam","Cam","Cam","Blue","Blue","Game","Game","Game","Jigs"]
		
		var expectedOutput = ["L:[Blue]", "L:[Blue]", "L:[Game, Game]", "L:[Game]","L:[Cam, Cam]", "M:[Cam]"]
		compareResults(input, &expectedOutput)
		XCTAssertTrue(expectedOutput.isEmpty)
	}
	
	func testPackageMatching1() throws {
		let input = ["Cam","Game","Jigs"]
		
		var expectedOutput = ["L:[Game]","M:[Cam]"]
		compareResults(input, &expectedOutput)
		XCTAssertTrue(expectedOutput.isEmpty)
	}
	
	func testPackageMatching2() throws {
		let input = ["","Hello","Jigs"]
		
		var expectedOutput:[String] = []
		compareResults(input, &expectedOutput)
		XCTAssertTrue(expectedOutput.isEmpty)
	}
	
	func testPackageMatching3() throws {
		let input = ["Cam","Cam","Cam","Cam","Cam","Cam","Cam","Cam","Cam","Cam","Game","Game","Jigs"]
		
		var expectedOutput = ["L:[Game, Game]", "L:[Cam, Cam]", "L:[Cam, Cam]", "L:[Cam, Cam]", "L:[Cam, Cam]", "L:[Cam, Cam]"]
		compareResults(input, &expectedOutput)
		XCTAssertTrue(expectedOutput.isEmpty)
	}
	
}
