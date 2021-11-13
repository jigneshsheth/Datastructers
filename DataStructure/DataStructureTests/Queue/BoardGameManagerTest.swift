//
//  BoardGameManagerTest.swift
//  DataStructureTests
//
//  Created by Jigs Sheth on 11/13/21.
//  Copyright © 2021 jigneshsheth.com. All rights reserved.
//

import XCTest
@testable import DataStructure

protocol BoardGameManager {
	associatedtype Player
	mutating func nextPlayer() -> Player?
}

extension QueueStack:BoardGameManager {
	typealias Player = T
	mutating func nextPlayer() -> Player? {
		guard let player = self.dequeue() else {
			return nil
		}
		// since the player turns one after other once dequeue empty we need to go back to original
		// this is circular A->B->C->A->B->C->... and the turn cycle continues for players.
		enqueue(player)
		return player
	}

}

final class BoardGameManagerTest: XCTestCase {
	func test_playerOrder() {
		var queue = QueueStack<String>()
		queue.enqueue("Kirby")
		queue.enqueue("Samus")
		queue.enqueue("Pikachu")
		queue.enqueue("Toon Ozma")
		
		XCTAssertEqual(queue.peek, "Kirby")
		queue.nextPlayer()
		queue.nextPlayer()
		XCTAssertEqual(queue.peek, "Pikachu")
		queue.nextPlayer()
		XCTAssertEqual(queue.peek, "Toon Ozma")
		queue.nextPlayer()
		XCTAssertEqual(queue.peek, "Kirby")
	}
}
