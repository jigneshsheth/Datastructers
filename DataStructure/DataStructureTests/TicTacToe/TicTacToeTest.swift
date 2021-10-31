//
//  TicTacToeTest.swift
//  DataStructure
//
//  Created by Jigs Sheth on 4/24/16.
//  Copyright © 2016 jigneshsheth.com. All rights reserved.
//

import XCTest
@testable import DataStructure

class TicTacToeTest: XCTestCase {
  
  override func setUp() {
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
  
  func testDrawTicTacToe() {
    let ticTacToe = TicTacToe(boardSize: 3)
    
    ticTacToe.move(x: 0, y: 0, state: .O)
    ticTacToe.move(x: 1, y: 1, state: .X)
    ticTacToe.move(x: 0, y: 1, state: .X)
    
    ticTacToe.move(x: 1, y: 2, state: .X)
    ticTacToe.move(x: 2, y: 0, state: .X)
    ticTacToe.move(x: 2, y: 2, state: .X)
    
    ticTacToe.move(x: 0, y: 2, state: .O)
    ticTacToe.move(x: 1, y: 0, state: .O)
    ticTacToe.move(x: 2, y: 1, state: .O)
    
    
    ticTacToe.move(x: 1, y: 1, state: .X)
    
  }
  
  
  func testWinOTicTacToe() {
    let ticTacToe = TicTacToe(boardSize: 3)
    
    ticTacToe.move(x: 0, y: 0, state: .O)
    ticTacToe.move(x: 1, y: 0, state: .X)
    ticTacToe.move(x: 1, y: 1, state: .O)
    
    ticTacToe.move(x: 0, y: 1, state: .X)
    ticTacToe.move(x: 2, y: 2, state: .O)
  }
  
  
  func testWinXTicTacToe() {
    let ticTacToe = TicTacToe(boardSize: 3)
    
    ticTacToe.move(x: 0, y: 0, state: .X)
    ticTacToe.move(x: 1, y: 0, state: .O)
    ticTacToe.move(x: 1, y: 1, state: .X)
    
    ticTacToe.move(x: 0, y: 1, state: .O)
    ticTacToe.move(x: 2, y: 2, state: .X)
  }
  
  func testPerformanceExample() {
    // This is an example of a performance test case.
    self.measure {
      // Put the code you want to measure the time of here.
    }
  }
  
}
