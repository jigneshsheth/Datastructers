//
//  ProductSortingTest.swift
//  DataStructureTests
//
//  Created by Jigs Sheth on 11/3/21.
//  Copyright © 2021 jigneshsheth.com. All rights reserved.
//

import XCTest
@testable import DataStructure

class ProductSortingTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
      
			var array = [Product(name: "test1", price: 0.0, review: 1.0),Product(name: "test5", price: 0.0, review: 5.0),Product(name: "test3", price: 0.0, review: 3.0),Product(name: "test4", price: 0.0, review: 4.0),Product(name: "test2", price: 0.0, review: 2.0)]
			
			print(array.sorted())
			
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
