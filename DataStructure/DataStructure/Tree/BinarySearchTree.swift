//
//  BinarySearchTree.swift
//  DataStructure
//
//  Created by Jigs Sheth on 3/21/16.
//  Copyright © 2016 jigneshsheth.com. All rights reserved.
//

import Foundation

///Can not used struct since struct doesn't allow the recursive stuct for Node
/// Node class define each tree node with data as Int value and left and right node reference.
/// Leafe nodes don't have any left and right node.
public class Node {
  
  var left:Node?
  var right:Node?
  private(set) var data:Int
  
  /**
   Defafult Initializer
   
   - parameter data: Int value for Node
   
   - returns: instance of Node
   */
  required public init(data:Int)
  {
    self.data = data
  }
  
  /**
   convinidence Initializer for Node
   
   - parameter data:  Int value for Node
   - parameter left:  left node
   - parameter right: right node
   
   - returns: Generated Node instance
   */
  convenience init(data:Int,left:Node?,right:Node?){
    self.init(data: data)
    self.left = left
    self.right = right
  }
  
  
}


/// Binary Search Tree class. Searching binary tree is O(log n)
public class BinarySearchTree{
  
  private let root:Node
  
  required public init(value:Int){
    self.root = Node(data: value)
  }
  
  
  public func findNode(root:Node?,value:Int) -> Node?{
    
    guard let root = root else {
      return nil
    }
    
    var currentNode:Node? = root
    
    while currentNode != nil {
      let currentValue = currentNode!.data
      if currentValue == value {
        break
      }
      if  currentValue < value {
        currentNode = currentNode!.left
      }else if currentValue > value {
        currentNode = currentNode!.right
      }
    }
    return currentNode
  }
  
  
  
  public func findNode_recursive(root:Node?,value:Int) -> Node? {
    guard let root = root else {
      return nil
    }
    
    if root.data == value {
      return root
    } else if root.data > value {
      return findNode_recursive(root.left, value: value)
    }else {
      return findNode_recursive(root.right, value: value)
    }
  }
  
  public func insert(value:Int) {
    if value <= 0 {
      return
    }
    
    let newNode = Node(data: value)
    
    let rootValue = root.data
    
    
    if rootValue <= value {
      root.right = newNode
    }else {
      root.left = newNode
    }
    
    
    
  }
  
  
  
  
}
