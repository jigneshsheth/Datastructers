//
//  CartDiscountTest.swift
//  DataStructureTests
//
//  Created by Jigs Sheth on 12/29/21.
//  Copyright © 2021 jigneshsheth.com. All rights reserved.
//

import XCTest
@testable import DataStructure

class CartDiscountTest<T:CartItem>: XCTestCase {

	var cartDiscount:CartDiscount<T>?
    override func setUpWithError() throws {
			cartDiscount = CartDiscount<T>()
		}

    override func tearDownWithError() throws {
			cartDiscount = nil
		}

    func testExample() throws {
			let input = [("Orange",2),("Apple",5),("Grapes",3)]
			//  Apple = 8 , Orange = 10, Grapes = 10
			// total = 90 =  40 + 20 + 30
			//orange = 20% , Apple = 0 , Grapes = 20%
			// 32+24+20
			let cartTotal = cartDiscount?.getTotalCost(_cartItems:input)
			XCTAssertEqual(62.0, cartTotal)
		}


}
