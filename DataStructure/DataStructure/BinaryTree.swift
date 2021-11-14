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


