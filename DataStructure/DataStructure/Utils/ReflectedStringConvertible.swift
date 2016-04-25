//
//  ReflectedStringConvertible.swift
//  DataStructure
//
//  Created by Jigs Sheth on 4/24/16.
//  Copyright © 2016 jigneshsheth.com. All rights reserved.
//

import Foundation

//http://mattcomi.tumblr.com/post/143043907238/struct-style-printing-of-classes-in-swift?utm_campaign=Swift%2BSandbox&utm_medium=email&utm_source=Swift_Sandbox_38
public protocol ReflectedStringConvertible:CustomStringConvertible {}


extension ReflectedStringConvertible {
  
  public var description:String {
    
    let mirror = Mirror(reflecting: self)
    var str = "\(mirror.subjectType)("
    
    var first = true
    
    for (label, value) in mirror.children {
      if let label = label {
        if first {
          first = false
        }else {
          str += ","
        }
        
        str += label
        str += ": "
        str += "\(value)"
      }
    }
    str += ")"
    return str
  }
  
}