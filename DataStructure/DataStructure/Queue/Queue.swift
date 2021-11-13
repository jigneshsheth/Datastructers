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

//MARK: - Array Implementation
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


//MARK: - Stack implementation, using 2 stacks

struct QueueStack<T:Equatable>:Queue {
	
	private var enqueueStack = Stack<T>()
	private var dequeueStack = Stack<T>()

	var isEmpty: Bool {
		return enqueueStack.isEmpty && dequeueStack.isEmpty
	}
	
	
	var peek: T? {
		return !dequeueStack.isEmpty ? dequeueStack.peek() : enqueueStack.first
	}

	mutating func enqueue(_ element: T) {
		enqueueStack.push(element)
	}
	
	mutating func dequeue() -> T? {
		if dequeueStack.isEmpty {
			while !enqueueStack.isEmpty, let element = enqueueStack.pop()  {
				dequeueStack.push(element)
			}
		}
		return dequeueStack.pop()
	}
	
	

}
