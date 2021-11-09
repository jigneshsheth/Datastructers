	//
	//  Palindrome.swift
	//  DataStructure
	//
	//  Created by Jigs Sheth on 11/8/21.
	//  Copyright © 2021 jigneshsheth.com. All rights reserved.
	//

import Foundation

class Palindrome {
	
	func isPalindrome(_ x: Int) -> Bool {
		let charArray = Array(String(x))
		var start = 0
		var end = charArray.count - 1
		while (start < end) {
			if charArray[start] == charArray[end] {
				start += 1
				end -= 1
			} else {
				return false
			}
		}
		return true
	}
	
}
