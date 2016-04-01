//
//  Card.swift
//  DataStructure
//
//  Created by Jigs Sheth on 3/21/16.
//  Copyright © 2016 jigneshsheth.com. All rights reserved.
//

import Foundation


public class Card {
  
  
 class public func shuffle<T>(input:[T]) -> [T]{
  var input:[T] = input
    let len = input.count
    for i in 0..<len{
      let index = Int(arc4random_uniform((UInt32(len - i))))
      let temp = input[i]
      input[i] = input[index]
      input[index] = temp
    }
    return input
  }
}

