//
//  ProductDataSorting.swift
//  DataStructure
//
//  Created by Jigs Sheth on 11/3/21.
//  Copyright © 2021 jigneshsheth.com. All rights reserved.
//

import Foundation

struct Product:Hashable,Comparable {
	
	var name:String
	var price:Double
	var review:Double
	
	static public func == (lhs:Product,rhs:Product) -> Bool {
		return lhs.review == rhs.review
	}
	
	func hash(into hasher: inout Hasher) {
		hasher.combine(review)
		hasher.combine(price)
	}
	static func < (lhs: Product, rhs: Product) -> Bool {
		return lhs.review < rhs.review
	}

}








