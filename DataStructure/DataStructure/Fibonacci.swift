//
//  Fibonacci.swift
//  DataStructure
//
//  Created by Jigs Sheth on 4/20/16.
//  Copyright © 2016 jigneshsheth.com. All rights reserved.
//

import Foundation


public func fibonacci(num:Int) -> Int {
  return num < 2 ? 1 : fibonacci(num - 1)  + fibonacci(num - 2)
}

public func dynamicFibonacci(num:Int) -> [Int] {
  let stopWatch = StopClock()
  stopWatch.startClock()
  var dictionary:Array<Int> = Array(count: num, repeatedValue: 0)
  fib(num-1, dict: &dictionary)
  stopWatch.stopClock()
  return dictionary
}

private func fib(num:Int,inout dict:[Int]) -> Int {

  if dict[num] != 0 {
    return dict[num]
  }else {
    let result = num < 2 ? 1 : fib(num - 2, dict: &dict) + fib(num - 1, dict: &dict)
    dict[num] = result
    return result
  }
}