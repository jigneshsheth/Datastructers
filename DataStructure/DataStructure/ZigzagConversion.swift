//
//  ZigzagConversion.swift
//  DataStructure
//
//  Created by Jigs Sheth on 11/8/21.
//  Copyright © 2021 jigneshsheth.com. All rights reserved.
//

import Foundation

class ZigzagConversion {
	
	static func zigzag(_ input:String, numOfRow:Int) -> String {
		var s:[String] = []
		
		for i in 0..<numOfRow{
			s.append("")
		}
		
		let charArray = Array(input)
		
		var counter = 0
		var isIncrement = true
		for char in charArray {

			s[counter].append(String(char))
			
			if isIncrement && counter < numOfRow - 1 {
				counter += 1
			}
			if !isIncrement && counter > 0{
				counter -= 1
			}
			
			if counter == numOfRow - 1 || counter == 0 {
				isIncrement = !isIncrement
			}
		}
		
		return s.joined()
	}
	
}
