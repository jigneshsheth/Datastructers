	//
	//  LicenseKeyFormatting.swift
	//  DataStructure
	//
	//  Created by Jigs Sheth on 11/9/21.
	//  Copyright © 2021 jigneshsheth.com. All rights reserved.
	//

import Foundation

class LicenseKeyFormatting{
	
	func licenseKeyFormatting(_ s: String, _ k: Int) -> String {
	
		var result = ""
		var counter = 0
		
		for char in Array(s.uppercased()).reversed() {
			if char == "-",counter != k {
				continue
			}
			
			if counter == k {
				if char != "-"{
					result.append("-")
					counter = 1
				}else {
					counter = 0
				}
			}else {
				counter += 1
			}
			result.append(char)
		}
		
		if result.last == "-" {
			result.removeLast()
		}
		
		
		return String(result.reversed())
	}
	
}
