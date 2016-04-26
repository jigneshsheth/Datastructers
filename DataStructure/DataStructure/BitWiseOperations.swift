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

/**
 Count the num of 1 in int 
 Completicity worst case O(n) since we are checking last but every time
 
 - parameter num: input number
 
 - returns: counter of 1 bit
 */
public func countNumberOfOne(num:Int) -> Int {
  var num = num
  var counter = 0
  while num != 0 {
    if num & 1 == 1 {
      counter += 1
    }
    num = num >> 1
  }
  return counter
}


/**

 Count the num of 1 in int
 Completicity worst case O(m) since it only checks 1 in the int. m = number of 1's
 ex 15 has 4 1 bit so this loop only runs 4 times
 - parameter num: input number
 
 - returns: count of "on" bits
 */
public func countNumberOfOneOptimal(num:Int) -> Int {
  
  var num = num
  var counter = 0
  while num != 0 {
    num = num & (num - 1)
    counter += 1
  }
  
  return counter
}