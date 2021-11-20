	//
	//  BinarySearch.swift
	//  DataStructure
	//
	//  Created by Jigs Sheth on 11/20/21.
	//  Copyright © 2021 jigneshsheth.com. All rights reserved.
	//

import Foundation

func findIndices(of value:Int, in array:[Int]) -> CountableRange<Int>? {
	
	guard let startIndex =  array.firstIndex(of: value) else {
		return nil
	}
	
	guard let endIndex =  array.reversed().firstIndex(of: value) else {
		return nil
	}
	
	return startIndex..<endIndex.base
}


	/// Find Indices based on the binary search
	/// - Parameters:
	///   - value: value in the array
	///   - array: array
	/// - Returns: range for the indices of that value
	/// 	//// TODO: Jigs Not implementing since I am not sure it will be useful for preparation.
func findIndicesWithBinarySearch(of value:Int, in array:[Int]) -> CountableRange<Int>? {
	
	guard let startIndex =  array.index(of: value) else {
		return nil
	}
	
	guard let endIndex =  array.reversed().index(of: value) else {
		return nil
	}
	
	return startIndex..<endIndex.base
}







extension RandomAccessCollection where Element:Comparable {
	
	func binarySearch(for value:Element, in range: Range<Index>? = nil) -> Index? {
		let range = range ?? startIndex..<endIndex
		guard range.lowerBound < range.upperBound else {
			return nil
		}
		
		let size = distance(from: range.lowerBound, to: range.upperBound)
		let middle = index(range.lowerBound, offsetBy: size/2)
		
		if self[middle] == value {
			return middle
		}else if self[middle] > value {
			return binarySearch(for: value, in: range.lowerBound..<middle)
		}else {
			return binarySearch(for: value, in: index(after: middle)..<range.upperBound)
		}
	}
	
}
