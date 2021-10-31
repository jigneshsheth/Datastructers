//
//  NumberToWords.swift
//  DataStructure
//
//  Created by Jigs Sheth on 4/25/16.
//  Copyright © 2016 jigneshsheth.com. All rights reserved.
//

import Foundation

public class NumberToWords {
  
  static let lessThanTwenty = ["","One","Two","Three","Four","Five","Six","Seven","Eight","Nine","Ten","Eleven","Tweleve","Thirteen","Fourteen","Fifteen","Sixteen","Seventeen","Eighteen","Nineteen"]
  static let tens = ["","Twenty","Thirty","Fourty","Fifty","Sixty","Seventy","Eighty","Nenety"]
  static let thousands = ["","Thousand","Million","Billion"]
  
  public class func numberToWords(_ number:Int) -> String{
    if number == 0 {
      return "Zero"
    }
    var num = number
    var result = ""
    var i = 0
    while num > 0 {
      if num % 1_000 != 0 {
        result = helper(n: num % 1_000) + thousands[i] + " " + result
      }
      num /= 1_000
      i += 1
    }
    return result.trimmingCharacters(in:CharacterSet.whitespacesAndNewlines)
  }
  
  private class func helper(n:Int) -> String {
    if n == 0 {
      return ""
    }else if n < 20 {
      return lessThanTwenty[n]
    }else if n < 1_00 {
      return tens[n/10]  + helper(n: n%10)
    }else {
      return lessThanTwenty[n/1_00] + "Hundred" + helper(n: n%1_00)
    }
  }
  
}
