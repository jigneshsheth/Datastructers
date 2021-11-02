	//
	//  AddTwoNumber_LinkedList.swift
	//  DataStructure
	//
	//  Created by Jigs Sheth on 11/2/21.
	//  Copyright © 2021 jigneshsheth.com. All rights reserved.
	//
/**
 You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order, and each of their nodes contains a single digit. Add the two numbers and return the sum as a linked list.
 
 You may assume the two numbers do not contain any leading zero, except the number 0 itself.
 
 Example 1:
 
 Input: l1 = [2,4,3], l2 = [5,6,4]
 Output: [7,0,8]
 Explanation: 342 + 465 = 807.
 Example 2:
 
 Input: l1 = [0], l2 = [0]
 Output: [0]
 Example 3:
 
 Input: l1 = [9,9,9,9,9,9,9], l2 = [9,9,9,9]
 Output: [8,9,9,9,0,0,0,1]
 
 Constraints:
 The number of nodes in each linked list is in the range [1, 100].
 0 <= Node.val <= 9
 It is guaranteed that the list represents a number that does not have leading zeros.
 */

import Foundation

/**
 * Definition for singly-linked list.*/
public class ListNode: Equatable, CustomStringConvertible {
	
	
	public var val: Int
	public var next: ListNode?
	public init() { self.val = 0; self.next = nil; }
	public init(_ val: Int) { self.val = val; self.next = nil; }
	public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
	
	func appendToLast(_ data: Int) {
		if (next != nil) {
			next?.appendToLast(data)
		} else {
			next = ListNode(data)
		}
	}
	
	static func reverseList(_ list:ListNode?) -> ListNode? {
		guard list != nil else {
			return nil
		}
		var head:ListNode? = list
		var next = head?.next
		var reverseList:ListNode? = nil
		while head != nil {
			head?.next = reverseList
			reverseList = head
			
			head = next
			next = head?.next
		}
		return reverseList
	}
	
	static func printList(_ list:ListNode?){
		var head:ListNode? = list
		while head != nil {
			print(head!.description)
			head = head!.next
		}
		
	}
	
	
	public static func == (lhs: ListNode, rhs: ListNode) -> Bool {
		return lhs.val == rhs.val && lhs.next == rhs.next
	}
	
	
	public var description: String {
		var value = "\(val) -->"
		if let next = next {
			value.append(next.description)
		}else {
			value.append("nil")
		}
		return value
	}
	
	public static func createList(_ input:[Int]) -> ListNode? {
		var result:ListNode?
		for index in 0..<input.count {
			if index == 0 {
				result = ListNode(input[0])
			}else{
				result?.appendToLast(input[index])
			}
		}
		return result
	}
	
}


class AddTwoNumbers_LinkedList{
	
	func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
		
		var resultList:ListNode? = ListNode(0)
		let result = resultList
		
		var l1Node = l1
		var l2Node = l2
		
		var carry = 0
		
		while l1Node != nil || l2Node != nil || carry > 0 {
			var sum = carry
			sum += l1Node?.val ?? 0
			sum += l2Node?.val ?? 0
			
			carry = (sum / 10)
			resultList?.next = ListNode(sum % 10)
			
			l1Node = l1Node?.next
			l2Node = l2Node?.next
			resultList = resultList?.next
		}
		
		
		return result?.next
		
	}
	
	
	
}


