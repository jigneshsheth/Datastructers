	//
	//  UniqueEmailAddresses.swift
	//  DataStructure
	//
	//  Created by Jigs Sheth on 11/8/21.
	//  Copyright © 2021 jigneshsheth.com. All rights reserved.
	//

import Foundation

class UniqueEmailAddresses {
	
	func numUniqueEmails(_ emails: [String]) -> Int {
		
		var dict = [String:Bool]()
		
		for email in emails {
			let e = email.components(separatedBy:"@")
			if e.count != 2 {
				continue
			}
			
			var localName = e[0]
			let domainName = e[1]
			
			if localName.contains("+") {
				localName = localName.components(separatedBy:"+")[0]
			}
			localName = localName.replacingOccurrences(of: ".", with: "")
			
			let modifiedEmail = localName + "@" + domainName
			if dict[modifiedEmail] == nil {
				dict[modifiedEmail] = true
			}
		}
		return dict.count
	}
	
	
	func numUniqueEmailsWithSet(_ emails: [String]) -> Int {
		
		var uniqueEmails = Set<String>()
		
		for email in emails {
			let e = email.components(separatedBy:"@")
			if e.count != 2 {
				continue
			}
			
			var localName = e[0]
			let domainName = e[1]
			
			if localName.contains("+") {
				localName = localName.components(separatedBy:"+")[0]
			}
			localName = localName.replacingOccurrences(of: ".", with: "")
			
			uniqueEmails.insert(localName + "@" + domainName)
			
		}
		return uniqueEmails.count
	}
	
	func licenseKeyFormatting(_ s: String, _ k: Int) -> String {
		
		let charArray = Array(s)
		var result = ""
		var counter = 0
		for i in (0...charArray.count - 1).reversed() {
			
			if charArray[i] != "-" && counter != 2 {
				result.append(String(charArray[i]))
			}
			
			if counter == 2 {
				counter = 0
			}else {
				counter += 1
			}
		}
		return result
	}
	
}
