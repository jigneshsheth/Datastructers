	//
	//  BinaryTree.swift
	//  DataStructure
	//
	//  Created by Jigs Sheth on 11/13/21.
	//  Copyright © 2021 jigneshsheth.com. All rights reserved.
	//

import Foundation

class BinaryNode<Element> {
	
	var value:Element
	var leftChild: BinaryNode?
	var rightChild: BinaryNode?
	
	init(_ value:Element) {
		self.value = value
	}
	
}


extension BinaryNode {
	
		/// Traversal InOrder
		/// - Parameter visit: Closure.
	func traversalInOrder(visit: (Element) -> Void  ){
		leftChild?.traversalInOrder(visit: visit)
		visit(value)
		rightChild?.traversalInOrder(visit: visit)
	}
	
	func traversalPreOrder_serialization(visit: (Element?) -> Void  ){
		visit(value)
		if let leftChild = leftChild {
			leftChild.traversalPreOrder_serialization(visit: visit)
		}else {
			visit(nil)
		}
		if let rightChild = rightChild {
			rightChild.traversalPreOrder_serialization(visit: visit)
		}else {
			visit(nil)
		}
	}
	func traversalPreOrder(visit: (Element) -> Void  ){
		visit(value)
		leftChild?.traversalPreOrder(visit: visit)
		rightChild?.traversalPreOrder(visit: visit)
	}
	
	
	func traversalPostOrder(visit: (Element) -> Void  ){
		leftChild?.traversalPostOrder(visit: visit)
		rightChild?.traversalPostOrder(visit: visit)
		visit(value)
	}
	
}



extension BinaryNode {
	
	static func serializeTree<T>(_ node:BinaryNode<T>) -> [T?] {
		var array:[T?] = []
		node.traversalPreOrder_serialization{array.append($0)}
		return array
	}
	
	static func deserializeTree<T>(_ array: inout [T?]) -> BinaryNode<T>? {
		guard let val = array.removeLast() else {
			return nil
		}
		
		let node = BinaryNode<T>(val)
		node.leftChild = deserializeTree(&array)
		node.rightChild = deserializeTree(&array)
		return node
	}
	
	static	func deserialize<T>(_ array:[T?]) -> BinaryNode<T>? {
		var arr = Array(array.reversed())
		return deserializeTree(&arr)
	}
}





	//  //Note: This algorithm is based on an implementation by Károly Lőrentey in his book Optimizing Collections, available from https://www.objc.io/books/optimizing-collections/.
	//
extension BinaryNode:CustomStringConvertible {
	
	var description: String {
		return diagram(for:self)
	}
	
	private func diagram(for node:BinaryNode?,_ top: String = "",_ root: String = "",_ bottom: String = "" ) -> String{
		guard let node = node else {
			return root + "nil\n"
		}
		if node.leftChild == nil && node.rightChild == nil {
			return root + "\(node.value)\n"
		}
		return diagram(for: node.rightChild,
											top + " ", top + "┌──", top + "│ ")
		+ root + "\(node.value)\n"
		+ diagram(for: node.leftChild,
								 bottom + "│ ", bottom + "└──", bottom + " ")
	}
	
}


