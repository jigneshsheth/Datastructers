	//
	//  IDCodeVarification.swift
	//  DataStructure
	//
	//  Created by Jigs Sheth on 11/1/21.
	//  Copyright © 2021 jigneshsheth.com. All rights reserved.
	//
/**
 * Say, an organization issues ID cards to its employees with unique ID codes.
 * The ID code for an employee named Jigarius Caesar looks as follows: CAJI202002196.
 
 Here’s how the ID code is derived:
 
 CA: First 2 characters of the employee’s last name.
 JI: First 2 characters of the employee’s first name.
 2020: Full year of joining.
 02: 2 digit representation of the month of joining.
 19: Indicates that this is the 19th employee who joined in Feb 2020.
 This will have at least 2 digits, starting with 01, 02, and so on.
 6: The last digit is a verification digit which is computed as follows:
 Take the numeric part of the ID code (without the verification digit).
 Sum all digits in odd positions. Say this is O.
 Sum all digits in even positions. Say this is E.
 Difference between O & E. Say this is V.
 If V is negative, ignore the sign, e.g., -6 is treated as 6. Say this is V.
 If V is greater than 9, divide it by 10 and take the reminder. Say this is V.
 V is the verification code.
 For the above ID card, here’s how you‘ll test the verification digit.
 
 CAJI202002196 # ID code
 202002196 # Numeric part
 20200219 # Ignoring verification digit
 2 + 2 + 0 + 1 = 5 # Sum of odd position digits, i.e. O
 0 + 0 + 2 + 9 = 11 # Sum of even position digits, i.e. E
 5 - 11 = -6 # V = O - E
 6 # Verification digit, ignoring sign
 An ID code is considered valid if:
 
 The first 4 characters of the card are correct, i.e. CAJI.
 The verification digit is correct, i.e. 6.
 
 Problem
 Write a command-line program in your preferred coding language that:
 Allows the user to enter their First name, Last name and ID code.
 Prints PASS if the ID code seems valid.
 Prints INVESTIGATE otherwise.
 Write relevant tests.
 It is not necessary to use a testing library.
 You can use your custom implementation of tests.
 */

import Foundation
	//
class IDCodeVerification{
	
		/// Check ID is valid or not
		/// - Parameters:
		///   - firstName: first name
		///   - lastName: last name
		///   - idCode: ID Code
		/// - Returns: PASS if valid otherwise INVESTIGATE
	static func checkValidID(firstName:String, lastName:String, idCode:String) -> String{
		let result = "INVESTIGATION"
		guard idCode.count == 13 else {
			return result
		}
		let first = firstName.uppercased()
		let last = lastName.uppercased()
		let idCodeValue = idCode.uppercased()
		let firstNameArray = first.map{String($0)}
		if idCodeValue.prefix(2).caseInsensitiveCompare(last.prefix(2)) != .orderedSame{
			return result
		}else {
			
			var verificationDigit:Int = 0
			var oddSum:Int = 0
			var evenSum:Int = 0
			
			for (index,char) in idCodeValue.enumerated(){
				
				print("index = \(index) char: \(char)")
				if index == 0 || index == 1 {
					continue
				}else if (index == 2 && String(char) != firstNameArray[0]) || (index == 3 && String(char) != firstNameArray[1]){
					return result
				}else {
					if index == 12,let num = Int(String(char)){
						verificationDigit = num
					}else if index % 2 == 0,let num = Int(String(char)) {
						evenSum += num
					}else if let oddNum = Int(String(char)) {
						oddSum += oddNum
					}
					
				}
				
			}
			
			if  (abs(oddSum - evenSum) % 10) != verificationDigit {
				return result
			}else{
				return "PASS"
			}
			
		}
	}
	
	
	
		/// <#Description#>
		/// - Parameters:
		///   - firstName: <#firstName description#>
		///   - lastName: <#lastName description#>
		///   - idCode: <#idCode description#>
		/// - Returns: <#description#>
	static func checkValidIDAlt(firstName:String, lastName:String, idCode:String) -> String{
		let result = "INVESTIGATION"
		
		guard idCode.count == 13 else {
			return result
		}
		
		let firstNameArray = firstName.uppercased().prefix(2).map{String($0)}
		let lastNameArray = lastName.uppercased().prefix(2).map{String($0)}
		let idCodeArray = idCode.uppercased().map{String($0)}
		
		var verificationDigit = 0
		var evenSum = 0
		var oddSum = 0
		
		for (i,char) in idCodeArray.enumerated() {
			if (i == 0 || i == 1), lastNameArray[i] != idCodeArray[i]{
				return result
			}else if (i == 2 || i == 3), firstNameArray[i-2] != idCodeArray[i]{
				return result
			}else {
				if i == 12,let num = Int(String(char)){
					verificationDigit = num
				}else if i % 2 == 0,let num = Int(String(char)) {
					evenSum += num
				}else if let oddNum = Int(String(char)) {
					oddSum += oddNum
				}
			}
		}
		
		if  (abs(oddSum - evenSum) % 10) != verificationDigit {
			return result
		}else{
			return "PASS"
		}
	}
}

