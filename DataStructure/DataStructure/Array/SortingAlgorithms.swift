	//
	//  ArrayOperations.swift
	//  DataStructure
	//
	//  Created by Jigs Sheth on 4/11/16.
	//  Copyright © 2016 jigneshsheth.com. All rights reserved.
	//

import Foundation



public class SortingAlgorithms {
	
		//  static let max = 5
	
		//  private var arr = [Int](count: max, repeatedValue: 0)
	private var arr :[Int] = []
	public var arrayOutput:[Int] {
		get {
			return arr
		}
	}
	
	
	init(){
		
	}
	
	init(input:[Int]){
		arr = input
	}
	
	public func insert(position:Int,num:Int) {
		for i in stride(from:(arr.count-1),to: position, by: -1){
			arr[i] = arr[i-1]
		}
		arr.insert(num, at: position)
	}
	
	
	public func delete(position:Int){
		for i in position ..< arr.count - 1 {
			arr[i] = arr[i+1]
		}
			//    arr.removeLast()
		arr.remove(at: arr.count - 1)
	}
	
	
		//arr.reverse()
	public func reverse() {
		var firstIndex = 0
		var lastIndex = arr.count - 1
		
		while firstIndex < lastIndex {
			let temp = arr[firstIndex]
			arr[firstIndex] = arr[lastIndex]
			arr[lastIndex] = temp
			
			firstIndex += 1
			lastIndex -= 1
		}
		
	}
	
	
	public func display(){
		print(" Array Output:: \(arr)")
	}
	
}


	// MARK: - Sort Implementation
extension SortingAlgorithms {
	
		//every iteration you will get smallest number at begining and start arranging the asceding array
	public func selectionSort(){
		logFunctionTitle()
		
		for i in 0..<arr.count {
			for j in (i+1)..<arr.count {
					// We selected arr[i] as first selected value
				if arr[i] > arr[j] {
					exchange(data: &arr, index1: i, Index2: j)
				}
			}
			print("Iteration: \(i)")
			display()
		}
		
		logFunctionEnd()
	}
	
		//  MARK:Selection Sort
	
		/// Selection Sort
	public func selectionSort<T:Comparable>(_ array:inout [T]){
		logFunctionTitle()

		guard array.count > 2 else {
			return
		}

		for current in 0..<(array.count - 1) {
			var lowest = current
			
			for other in (current + 1) ..< array.count {
				if array[lowest] > array[other] {
					lowest = other
				}
			}
			if lowest != current {
				array.swapAt(lowest, current)
			}
		}
		
		logFunctionEnd()
	}
		//  MARK:Bubble Sort
	
		/// Bubble Sort
	public func bubbleSort<T:Comparable>(_ array:inout [T]){
		logFunctionTitle()

		guard array.count > 2 else {
			return
		}

		for end in (0..<array.count).reversed() {
			var swap = false
			for i in 0..<end {
				if array[i] > array[i+1] {
					array.swapAt(i, i+1)
					swap = true
				}
			}
			
			// if there is swap happened in this pass then can exit early since the array is already sorted.
			if !swap {
				return
			}
		}
		
		logFunctionEnd()
	}
	
		//every iteration you will get largest number at the end and start arranging the decending array
		//Time complexicity : O(n2) in worst case:
	public func bubleSort(){
		logFunctionTitle()
		
		for i in 0..<arr.count {
			for j in 0..<arr.count-i-1 {
				if arr[j] > arr[j+1] {
					exchange(data: &arr, index1: j, Index2: j+1)
				}
			}
			print("Iteration: \(i)")
			display()
		}
		
		logFunctionEnd()
	}
	
		//every iteration you will get smallest number at the begining and start arranging the asending array
	public func insertionSort(){
		logFunctionTitle()
		
		for i in 1..<arr.count {
			for j in 0..<i {
				if arr[j] > arr[i] {
					let temp = arr[j]
					arr[j] = arr[i]
					
					var tempIndex = i
						//Interesting swap
					for k in stride(from:i,to: j, by: -1){
						arr[k] = arr[k-1]
						tempIndex = k
					}
					arr[tempIndex] = temp
				}
					//        print("Iteration: \(j)")
					//        display()
			}
			print("Iteration: \(i)")
			display()
		}
		
		logFunctionEnd()
	}
	
	
	
	
}


	// MARK: - Merge 2 sorted Array
extension SortingAlgorithms {
	
	
	public func mergeSortedArrays(a:[Int],b:[Int]){
		
		
		for _ in 0..<a.count {
			
		}
		
		
		
	}
	
}






