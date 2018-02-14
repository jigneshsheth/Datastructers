//
//  TicTacToe.swift
//  DataStructure
//
//  Created by Jigs Sheth on 4/24/16.
//  Copyright © 2016 jigneshsheth.com. All rights reserved.
//

import Foundation

public enum  TTTBoardState {
  case Blank
  case X
  case O
}

public class TicTacToe:ReflectedStringConvertible {
  
  
  
  let boardSize:Int
  var board:[[TTTBoardState]]
  private var moveCount = 0
  
  init(boardSize:Int) {
    self.boardSize = boardSize
    board = Array(repeating: Array(repeating:TTTBoardState.Blank, count:boardSize), count: boardSize)
  }
  
  
	public func move(x:Int,y:Int,state:TTTBoardState) {
    
    if board[x][y] == TTTBoardState.Blank {
      board[x][y] = state
    }else {
      print("Invalid Move:: Already value there")
      return
    }
    
    moveCount += 1
    
    
    // Check the col
    for i in 0..<self.boardSize {
      if board[x][i] != state {
        break
      }
      checkWinner(postion: i,state: state)
    }
    
    // Check the row
    for i in 0..<self.boardSize {
      if board[i][y] != state {
        break
      }
      checkWinner(postion: i,state: state)
    }
    
    
    // Check the diagonal
    for i in 0..<self.boardSize where x == y {
      if board[i][i] != state {
        break
      }
      checkWinner(postion: i,state: state)
    }
    
    // Check the anti diagonal, the otherway
    for i in 0..<self.boardSize where x == y {
      if board[i][(self.boardSize - 1) - i] != state {
        break
      }
      checkWinner(postion: i,state: state)
    }
    
    
    if moveCount == (Int(pow(Double(boardSize), 2.0)) - 1) {
      resetBoard()
      print("Match is Draw")
    }
    
  }
  
  public func resetBoard() {
    logFunctionTitle()
    print("Board::: \(board)")
    print("================= **** Reset TicTacToe Board ****===================")
    board = Array(repeating: Array(repeating:TTTBoardState.Blank, count:boardSize), count: self.boardSize)
  }
  
  
  private func checkWinner(postion:Int,state:TTTBoardState){
    if postion == self.boardSize - 1 {
      print("Winner is :: \(state)")
      resetBoard()
    }
  }
  
}
