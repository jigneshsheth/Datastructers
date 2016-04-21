//
//  RMNBasicFunctions.swift
//  DataStructure
//
//  Created by Jigs Sheth on 4/20/16.
//  Copyright © 2016 jigneshsheth.com. All rights reserved.
//

import Foundation


/**
 Print all number from 1 to n if number is divisible by 3 == "Fizz"
 if number is divisible by 5 == "Buzz"
 if number is divisible by 3 == "FizzBuzz"
 
 - parameter num: end number
 */
func printFizzBuzz(num:Int) {
  for i in 1...num {
    if i%3 == 0 && i%5 == 0 {
      print("number: \(i) :: FizzBuzz")
    }else if i%3 == 0 {
      print("number: \(i) :: Fizz")
    }else if i%5 == 0 {
      print("number: \(i) :: Buzz")
    }
  }
}