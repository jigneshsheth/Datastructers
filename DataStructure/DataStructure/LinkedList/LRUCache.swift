//
//  LRUCache.swift
//  DataStructure
//
//  Created by Jigs Sheth on 4/21/16.
//  Copyright © 2016 jigneshsheth.com. All rights reserved.
//
///  Reference : http://www.programcreek.com/2013/03/leetcode-lru-cache-java/
import Foundation

public class linkedNode:CustomStringConvertible {
  var key:Int
  var value:Int
  var prev:linkedNode?
  var next:linkedNode?
  init(key:Int,value:Int) {
    self.key = key
    self.value = value
  }
  
  public var description: String {
      return "key:: \(key) value: \(value)"
  }
}


public class LRUCache:ReflectedStringConvertible {
  
  var capacity:Int
  var dictionary:[Int:linkedNode] = [:]
  var head:linkedNode?
  var end:linkedNode?
  
  
  init(capacity:Int){
    self.capacity = capacity
  }
  
  public func get(key:Int) -> Int {
    if let node = dictionary[key] {
      remove(n:node)
      setHead(n:node)
      return node.value
    }else {
      return -1
    }
  }
  
  
  public func remove(n:linkedNode) {
    if let prev = n.prev {
      prev.next = n.next
    }else {
      head = n.next
    }
    
    if let next = n.next {
      next.prev = n.prev
    }else {
      end = n.prev
    }
  }
  
  
  public func setHead(n:linkedNode){
    n.next = head
    n.prev = nil
    
    if let head = head {
      head.prev = n
    }
    head = n
    
    guard let _ = end else {
      end = head
      return
    }
  }
  
  
  public func set(key:Int,value:Int) {
    if let old = dictionary[key], dictionary.keys.contains(key) {
      old.value = value
      remove(n:old)
      setHead(n:old)
    }else {
      let newNode = linkedNode(key: key, value: value)
      if dictionary.count >= capacity {
        dictionary.removeValue(forKey: end!.key)
        remove(n: end!)
        setHead(n:newNode)
      }else {
        setHead(n:newNode)
      }
      dictionary[key] = newNode
    }
    
  }
  
  
}
