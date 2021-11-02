	//
	//  LongestSubstring.swift
	//  DataStructure
	//
	//  Created by Jigs Sheth on 11/2/21.
	//  Copyright © 2021 jigneshsheth.com. All rights reserved.
	//
/**
 Given a string s, find the length of the longest substring without repeating characters.
 
 
 
 Example 1:
 
 Input: s = "abcabcbb"
 Output: 3
 Explanation: The answer is "abc", with the length of 3.
 Example 2:
 
 Input: s = "bbbbb"
 Output: 1
 Explanation: The answer is "b", with the length of 1.
 Example 3:
 
 Input: s = "pwwkew"
 Output: 3
 Explanation: The answer is "wke", with the length of 3.
 Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.
 Example 4:
 
 Input: s = ""
 Output: 0
 
 
 Constraints:
 
 0 <= s.length <= 5 * 104
 s consists of English letters, digits, symbols and spaces.
 **/
import Foundation
class LongestSubstring {
	
	public static func lengthOfLongestSubstring(_ s: String) -> Int {
		var start = 0
		var end = start+1
		var counter = 0
		var dict = [Character:Bool]()
		let charArray = Array(s)
		
		
		while start < charArray.count {
			dict[charArray[start]] = true
			
			while end < charArray.count {
				if dict[charArray[end]] != nil {
					break
				}else {
					dict[charArray[end]] = true
					end += 1
				}
			}
			
			counter = max(dict.count,counter)
			dict.removeAll()
			start = start + 1
			end = start + 1
			
		}
		
		
		return counter
		
	}
	
	
	
	
	
	
}
