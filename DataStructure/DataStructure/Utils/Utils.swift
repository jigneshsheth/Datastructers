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
  
  public func stopClock(name:String = #function) -> TimeInterval {
    let total = NSDate().timeIntervalSince(lastStartTime as Date)
    print("Total Time: \(name):: ---- \(total.description)")
    return total
  }
}


// MARK: Generic Functions

public func exchange<T>( data:inout [T],index1:Int,Index2:Int) {
  let temp = data[index1]
  data[index1] = data[Index2]
  data[Index2] = temp
}


/// MARK : Logger Functions
func logFunctionTitle(name:String = #function) {
  print("=========================================")
  print("********  \(name)  ********")
  print("=========================================")
}

func logFunctionEnd(name:String = #function) {
  print("=========================================")
  print("******** End \(name)  ********")
  print("=========================================")
}
