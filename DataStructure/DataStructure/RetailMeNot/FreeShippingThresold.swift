//
//  FreeShippingThresold.swift
//  DataStructure
//
//  Created by Jigs Sheth on 3/30/16.
//  Copyright © 2016 jigneshsheth.com. All rights reserved.
//

import Foundation
/**
 
 Question Given a list of prices on a website, find the two distinct item prices you need to have the lowest shopping cart total
 
 Variations You can start with free shipping at $25 and items of $5, $8, $15, $22.
 
 that meets a free shipping requirement.
 
 There is an n^2 solution that's obvious. n log n that's more efficient. n if you assume all prices are below the free
 
 shipping requirement.
 
 For the O( n ) solution, add the restriction that all items in the catalog are below the free shipping amount and that
 
 there are a huge number of them.
 
 One variation is to say that you can have as many items in the cart as you want to reach the free shipping total.
 */


/**
 
 Optimal solution O(n log n) because of the sort in the middle:
 - parameter productPrices:
 - parameter freeShippingAmt: Thresold for the free shipping
 
 - returns: touple of 2 values
 */
public func calculateFreeShipping(productPrices:[Int],freeShippingAmt:Int) -> (Int,Int) {
  
  var minFreeShippingDelta = freeShippingAmt
  
  var index1 = 0
  var index2 = productPrices.count - 1
  var result:(Int,Int) = (-1,-1)
  // Below statement do O(log n)
  let _productPrices = productPrices.sort()
  
  // Below statement do O(n) so total complexity of the method is O(n log n)
  while index1 < index2 {
    let price1 = _productPrices[index1]
    let price2 = _productPrices[index2]
    let delta = price1 + price2 - freeShippingAmt
    if delta > 0 && delta < minFreeShippingDelta {
      minFreeShippingDelta = delta
      result = (price1,price2)
    }
    if delta < 0 {
      index1 += 1
    }else {
      index2 -= 1
    }
  }
  return result
}