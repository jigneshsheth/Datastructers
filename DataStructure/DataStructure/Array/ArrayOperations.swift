//
//  ArrayOperations.swift
//  DataStructure
//
//  Created by Jigs Sheth on 4/11/16.
//  Copyright © 2016 jigneshsheth.com. All rights reserved.
//

import Foundation



public class ArrayOperations {
  
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
    for i in (arr.count-1).stride(to: position, by: -1){
      arr[i] = arr[i-1]
    }
    arr.insert(num, atIndex: position)
  }
  
  
  public func delete(position:Int){
    for i in position ..< arr.count - 1 {
      arr[i] = arr[i+1]
    }
//    arr.removeLast()
    arr.removeAtIndex(arr.count - 1)
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


// MARK: - Stack Implementation
extension ArrayOperations {
  
}



// MARK: - Search Implementation
extension ArrayOperations {
  
}

// MARK: - Sort Implementation
extension ArrayOperations {
  
  //every iteration you will get smallest number at begining and start arranging the asceding array
  public func selectionSort(){
    logFunctionTitle()
    
    for i in 0..<arr.count {
      for j in (i+1)..<arr.count {
        // We selected arr[i] as first selected value
        if arr[i] > arr[j] {
          let temp = arr[i]
          arr[i] = arr[j]
          arr[j] = temp
        }
      }
      print("Iteration: \(i)")
      display()
    }
    
    logFunctionEnd()
  }
  
  
  //every iteration you will get largest number at the end and start arranging the decending array
  public func bubleSort(){
    logFunctionTitle()
    
    for i in 0..<arr.count {
      for j in 0..<arr.count-i-1 {
        if arr[j] > arr[j+1] {
          let temp = arr[j]
          arr[j] = arr[j+1]
          arr[j+1] = temp
        }
      }
      print("Iteration: \(i)")
      display()
    }
    
    logFunctionEnd()
  }
  
  
  
  
}


// MARK: - Merge 2 sorted Array
extension ArrayOperations {
  
  
  public func mergeSortedArrays(a:[Int],b:[Int]){
    
    
    for i in 0..<a.count {
      
    }
    
    
    
  }
  
}






