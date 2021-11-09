//
//  BasicFunctions.swift
//  DataStructure
//
//  Created by Jigs Sheth on 3/18/16.
//  Copyright © 2016 jigneshsheth.com. All rights reserved.
//

import Foundation





// MARK: Arithmentic functions
func isPrime(_ number:Int) -> Bool {
  
  if number % 2 == 0 || number == 1 {
    return false
  }
  
  //  for var i = 3; i * i <= number; i += 2 {
  //    if number % i == 0 {
  //      return false
  //    }
  //  }
  
  for i in stride(from:3,to: number, by: 2){
    if number % i == 0 {
      return false
    }
  }
  
  return true
}

public func reverseString(_ str:String) -> String{
	return String(str.reversed())
}


func printPrimeNumbers(limit:Int){
  for i in 1...limit {
		if isPrime(i) {
      print("\(i) is Prime Number")
    }
  }
}


func reverseNumber(_ input:inout Int) {
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
func reverseNum(_ num:Int) -> Int {
	var number = abs(num)
	var result = 0
	while number > 0 {
		result = (result * 10 ) + number % 10
		number = number / 10
	}
	return result > Int32.max ? 0 : (num > 0 ? result : (result * -1))
}

/**
 check if the given integr number is Power of two ex. 2^1 = 2 ,2^2 = 4 , 2^3 = 8, 16,32,64,128,256,512,1024,2048,....
  2's binary = 10 and 1's binary value = 01,  so 10 & 01 = 0  same for 
   4's binary = 100 and 3's binary value = 011 so 100 & 011 = 0
 - parameter input:
 
 - returns: true if the given number is power of 2
 */
func isPowerOfTwo(_ input:Int) -> Bool {
  printBinary(num: input)
  let num = input & (input - 1)
  printBinary(num: num)
  return (input > 0) && (num == 0)
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
  var inputDictionary = [Bool](repeating: false, count: 10000)
  
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




