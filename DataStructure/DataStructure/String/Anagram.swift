//
//  Anagram.swift
//  DataStructure
//
//  Created by Jigs Sheth on 3/16/16.
//  Copyright © 2016 jigneshsheth.com. All rights reserved.
//

import Foundation

/**
 function is comparing 2 string and gives the result if they both string are anagram
 Anagram :  word, phrase, or name formed by rearranging the letters of another, such as cinema, formed from iceman.
 
 - parameter str1: input string 1
 - parameter str2: input string to compare
 
 - returns: true if the string is anagram otherwise false.
 */
public func isAnagram(str1:String,str2:String) -> Bool {
  
  func convertStringToCharacterArray(input:String) -> [Character] {
    return input.lowercased().filter{ $0 != " " }
  }
  
  let original = convertStringToCharacterArray(input: str1)
  var compare = convertStringToCharacterArray(input: str2)
  
  for char in original{
    if let index = compare.index(of: char) {
      compare.remove(at: index)
    }else {
      break
    }
  }
  return compare.isEmpty
}


