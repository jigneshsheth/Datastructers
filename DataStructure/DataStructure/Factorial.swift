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
  return number < 1 ? 0 : (1...number).reduce(1, *)
}


public func recursiveFactorial(number:Int) -> Int {
  if number < 1 {
    return 0
  }else {
    return number * dynamicFactorial(number: number - 1 )
  }
}

public func dynamicFactorial(number:Int) -> Int {
  var dictionary:Array<Int> = Array(repeating: 1, count: number)
  return fact(num: number, dict: &dictionary)
}


private func fact(num:Int, dict:inout [Int]) -> Int {
  if num <= 1 {
   return 1
  } else if dict[num - 1] != 1 {
    return dict[num - 1]
  }else {
    dict[num - 1] = num < 1 ? 0 :  num * fact(num: num - 1, dict: &dict)
    return dict[num - 1]
  }
}
