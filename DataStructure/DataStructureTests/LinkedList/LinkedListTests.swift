//
//  LinkedListTests.swift
//  DataStructure
//
//  Created by Jigs Sheth on 4/26/16.
//  Copyright © 2016 jigneshsheth.com. All rights reserved.
//

import XCTest
@testable import DataStructure

class LinkedListTests: XCTestCase {
  
  override func setUp() {
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
  
  func testLRUCache() {
    let lru = LRUCache(capacity: 5)
		lru.set(key: 1, value: 1)
		lru.set(key: 2, value: 2)
		lru.set(key:3, value: 3)
		lru.set(key:4, value: 4)
		lru.set(key:5, value: 5)
    
    print(lru)
		print("Value 1:: \(lru.get(key:1))")
    print(lru)
		lru.set(key:6, value: 6)
		print("Value 2:: \(lru.get(key:2))")
    print(lru)
  }
  
}
