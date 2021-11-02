	//
	//  TowSum.swift
	//  DataStructure
	//
	//  Created by Jigs Sheth on 11/2/21.
	//  Copyright © 2021 jigneshsheth.com. All rights reserved.
	//

import Foundation
/**
 Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
 
 You may assume that each input would have exactly one solution, and you may not use the same element twice.
 
 You can return the answer in any order.
 
 
 
 Example 1:
 
 Input: nums = [2,7,11,15], target = 9
 Output: [0,1]
 Output: Because nums[0] + nums[1] == 9, we return [0, 1].
 Example 2:
 
 Input: nums = [3,2,4], target = 6
 Output: [1,2]
 Example 3:
 
 Input: nums = [3,3], target = 6
 Output: [0,1]
 -  */
class TwoSum {
	
	func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
		var i = 0
		var result:[Int] = []
		while i < nums.count {
			result.append(i)
			let findValue = target - nums[i]
			var j = i+1
			while j < nums.count {
				if nums[j] == findValue {
					result.append(j)
					return result
				}
				j += 1
			}
			i += 1
			result = []
		}
		return result
	}
	
	
	func twoSum_Efficient(_ nums:[Int], _ target:Int) -> [Int]{
		
		var dict:[Int:Int] = [:]
		for index in 0...nums.count{
			let value = nums[index]
			let findValue = target - value
			if let exitIndex = dict[findValue]{
				return [exitIndex,index]
			}else{
				dict[value] = index
			}
		}
		return [-1,-1]
	}
	
}
