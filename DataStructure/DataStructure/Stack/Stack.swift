	//
	//  Stack.swift
	//  DataStructure
	//
	//  Created by Jigs Sheth on 11/13/21.
	//  Copyright © 2021 jigneshsheth.com. All rights reserved.
	//

import Foundation

struct Stack<Element:Equatable>:Equatable {
	
		//Storage
	private var storage:[Element] = []
	
	var isEmpty:Bool {
		return peek() == nil
	}
	
	init(){}
	
	init(_ elemenets:[Element]) {
		storage = elemenets
	}
		//Push
	mutating func push(_ element:Element) {
		storage.append(element)
	}
	
	@discardableResult
	mutating func pop() -> Element? {
		return storage.popLast()
	}
	
	func peek() -> Element? {
		return storage.last
	}
	
	
	
}


extension Stack:CustomStringConvertible{
	
	var description: String {
		return storage.map{"\($0)"}.joined(separator: " ")
	}
	
}

extension Stack: ExpressibleByArrayLiteral {
	init(arrayLiteral elements: Element...) {
		storage = elements
	}
}
