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


func printPrimeNumbers(limit:Int){
  for i in 1...limit {
    if isPrime(i) {
      print("\(i) is Prime Number")
    }
  }
}