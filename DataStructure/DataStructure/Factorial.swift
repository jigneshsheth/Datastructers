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


public func recursiveFactorial(number:Int) -> Int {
  if number < 1 {
    return 0
  }else {
    return number * dynamicFactorial(number - 1 )
  }
}

public func dynamicFactorial(number:Int) -> Int {
  var dictionary:Array<Int> = Array(count: number, repeatedValue: 1)
  return fact(number, dict: &dictionary)
}


private func fact(num:Int,inout dict:[Int]) -> Int {
  if num <= 1 {
   return 1
  } else if dict[num - 1] != 1 {
    return dict[num - 1]
  }else {
    dict[num - 1] = num < 1 ? 0 :  num * fact(num - 1, dict: &dict)
    return dict[num - 1]
  }
}