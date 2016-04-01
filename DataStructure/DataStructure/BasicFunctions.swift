//
//  BasicFunctions.swift
//  DataStructure
//
//  Created by Jigs Sheth on 3/18/16.
//  Copyright © 2016 jigneshsheth.com. All rights reserved.
//

import Foundation


func isPrime(number:Int) -> Bool {
  
  if number % 2 == 0 || number == 1 {
    return false
  }
  
  for var i = 3; i * i <= number; i += 2 {
    if number % i == 0 {
      return false
    }
  }
  
  return true
}

public func reverseString(str:String) -> String{
  return String(str.characters.lazy.reverse())
}


func printPrimeNumbers(limit:Int){
  for i in 1...limit {
    if isPrime(i) {
      print("\(i) is Prime Number")
    }
  }
}


func reverseNumber(inout input:Int) {
  var result = 0
  while input > 0 {
    result = ( result * 10 ) + input % 10
    input = input / 10
  }
  input = result
}


/**
 Reversing the number
 funct defination contains the var since the parameter number is updated within a method.
 - parameter number: input number for reverse
 
 - returns: reverse number
 */
func reverseNum( number:Int) -> Int {
  var number = number
  var result = 0
  while number > 0 {
    result = (result * 10 ) + number % 10
    number = number / 10
  }
  return result
}

/**
 check if the given integr number is Power of two
 
 - parameter input:
 
 - returns: true if the given number is power of 2
 */
func isPowerOfTwo(input:Int) -> Bool {
  return (input > 0) && ((input & (input - 1)) == 0)
}

/**
 Printing any integer value to binary
 
 - parameter num: Int value
 
 - returns:
 */
func printBinary(num:Int) -> String {
  print("Int to Binary \(num) to \(String(num,radix:2))")
  return String(num,radix:2)
}

/**
 O(n) solution where we just look into the bool array to see if number is there
 
 - parameter numbers: input array
 - parameter sum:     number which has to match for sum
 
 - returns: touple of array
 */
func pairOfTwoNumber(numbers:[Int],sum:Int) -> [(Int,Int)] {
  
  var results:[(Int,Int)] = []
//  for i in 0..<numbers.count {
//    for j in (i+1)..<numbers.count {
//      let num1 = numbers[i]
//      let num2 = numbers[j]
//      if (num1 + num2) == sum {
//        results.append((num1,num2))
//      }
//    }
//  }
  //[2,3,5,5,6,4,9,8,9,2,1,7]
  var inputDictionary = [Bool](count: 10000, repeatedValue: false)
  
  for i in 0..<numbers.count {
    let num = numbers[i]
    let otherNum = sum - num
    if otherNum >= 0 && inputDictionary[otherNum]{
      results.append((num,otherNum))
    }
    inputDictionary[num] = true
    
  }
  return results
}




