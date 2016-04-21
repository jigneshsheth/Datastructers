//
//  Factorial.swift
//  DataStructure
//
//  Created by Jigs Sheth on 3/16/16.
//  Copyright © 2016 jigneshsheth.com. All rights reserved.
//

import Foundation

/**
 Functions gives the factorial of given number
 
 - parameter number:
 
 - returns: int factorial for given number.
 */
public func factorial(number:Int) -> Int{
  return number < 1 ? 0 : (1...number).reduce(1, combine: *)
}


public func dynamicFactorial(number:Int) {
  
  
  
  
}