	//
	//  FindMedianSortedArray.swift
	//  DataStructure
	//
	//  Created by Jigs Sheth on 11/2/21.
	//  Copyright © 2021 jigneshsheth.com. All rights reserved.
	//

import Foundation

class FindMedianSortedArray {
	
	public static func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
		
		let arr = mergeSortedArrays(nums1, nums2)
		
		if arr.count % 2 == 1{
			return Double(arr[Int((arr.count + 1) / 2) - 1])
		}else{
			let midIndex = arr.count/2
			return Double(arr[midIndex-1] + arr[midIndex]) / 2
		}
		
	}
	
	public static func mergeSortedArrays(_ arr1:[Int],_ arr2:[Int]) -> [Int] {
		var arr = arr1
		for i in arr2 {
			arr.append(i)
		}
		return arr.sorted()
	}
	
}
