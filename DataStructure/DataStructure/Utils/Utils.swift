//
//  Utils.swift
//  DataStructure
//
//  Created by Jigs Sheth on 4/20/16.
//  Copyright © 2016 jigneshsheth.com. All rights reserved.
//

import Foundation

public class StopClock {
  
  private var lastStartTime = NSDate()
  
  public func startClock(){
    lastStartTime = NSDate()
  }
  
  public func stopClock(name:String = #function) -> NSTimeInterval {
    let total = NSDate().timeIntervalSinceDate(lastStartTime)
    print("Total Time: \(name):: ---- \(total.description)")
    return total
  }
}