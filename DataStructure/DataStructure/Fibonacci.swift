//
//  Fibonacci.swift
//  DataStructure
//
//  Created by Jigs Sheth on 4/20/16.
//  Copyright © 2016 jigneshsheth.com. All rights reserved.
//

import Foundation


public func fibonacci(num:Int) -> Int {
  return num < 2 ? 1 : fibonacci(num: num - 1)  + fibonacci(num: num - 2)
}

public func dynamicFibonacci(num:Int) -> [Int] {
  let stopWatch = StopClock()
  stopWatch.startClock()
  var dictionary:Array<Int> = Array(repeating: 0, count: num)
  fib(num: num-1, dict: &dictionary)
  stopWatch.stopClock()
  return dictionary
}

private func fib(num:Int, dict:inout [Int]) -> Int {
//  print("Dictionary:: \(dict)")
  if dict[num] != 0 {
//    print("Found \(num)")
    return dict[num]
  }else {
    let result = num < 2 ? 1 : fib(num: num - 2, dict: &dict) + fib(num: num - 1, dict: &dict)
    dict[num] = result
//    print("New Entry \(num)")
    return result
  }
}
