//
//  ReverseTheWord.swift
//  DataStructure
//
//  Created by Jigs Sheth on 4/25/16.
//  Copyright © 2016 jigneshsheth.com. All rights reserved.
//

import Foundation


public func reverseWords(str:String) -> String {
  
  var strCharArray = Array(str.characters)
  var start=0, end = 0
  let length = str.characters.count
  reverseStringInPlace(str: &strCharArray, start: start, end: length - 1)
  
  
  while end < length {
    if strCharArray[end] != " " {
      start = end
      while end < length && strCharArray[end] != " " {
        end += 1
      }
      end -= 1
      reverseStringInPlace(str: &strCharArray, start: start, end: end)
    }
    end += 1
  }
  
  return String(strCharArray)
}


private func reverseStringInPlace( str:inout [Character],start:Int,end:Int){
  var start = start,end = end
  while start < end {
    let temp = str[start]
    str[start] = str[end]
    str[end] = temp
    start += 1
    end -= 1
  }
}
