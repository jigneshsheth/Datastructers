//
//  SecondLargestElements.swift
//  DataStructure
//
//  Created by Jigs Sheth on 4/26/16.
//  Copyright © 2016 jigneshsheth.com. All rights reserved.
//

import Foundation



public func findSecondLargestElement(input:[Int]) throws -> Int {
  
  if input.count < 2 {
    throw NSError(domain: "Invalid Input", code: 1, userInfo: nil)
  }
  
  var secondLargestNum = input[1]
  var firstLargestNum = input[0]
  
  if firstLargestNum < secondLargestNum {
    firstLargestNum = input[1]
    secondLargestNum = input[0]
  }
  
  for i in 2..<input.count  {
    if input[i] > firstLargestNum {
      secondLargestNum = firstLargestNum
      firstLargestNum = input[i]
    }else if input[i] < firstLargestNum && input[i] > secondLargestNum {
      secondLargestNum = input[i]
    }
  }
  
  
  return secondLargestNum
}