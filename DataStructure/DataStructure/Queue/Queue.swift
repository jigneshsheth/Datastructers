//
//  Queue.swift
//  DataStructure
//
//  Created by Jigs Sheth on 11/13/21.
//  Copyright © 2021 jigneshsheth.com. All rights reserved.
//

import Foundation


protocol Queue {
	associatedtype Element
	
	mutating func enqueue(_ element: Element)
	mutating func dequeue() -> Element?
	var isEmpty:Bool {get}
	var peek:Element? {get}
	
}

// Implementation with Array

struct QueueArray<T>: Queue {

	var storage:[T] = []
	
	var isEmpty: Bool {
		return storage.isEmpty
	}
	
	var peek: T? {
		return storage.first
	}
	
	mutating func enqueue(_ element: T) {
		storage.append(element)
	}
	
	@discardableResult
	mutating func dequeue() -> T? {
		return isEmpty ? nil : storage.removeFirst()
	}
	
	
}

