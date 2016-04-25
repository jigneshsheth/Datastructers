//
//  BitWiseOperations.swift
//  DataStructure
//
//  Created by Jigs Sheth on 4/25/16.
//  Copyright © 2016 jigneshsheth.com. All rights reserved.
//

import Foundation


/**
 Adding 2 int value without using normal arithmatic operators
 
 - parameter a: num1
 - parameter b: num2
 
 - returns: Sum of 2 input values
 */
public func addTwoInt( a:Int,b:Int) -> Int {
  var num1 = a
  var num2 = b
  
  while num2 != 0 {
    let carry = num1 & num2
    num1 = num1 ^ num2
    num2 = carry << 1
  }
  return num1
}