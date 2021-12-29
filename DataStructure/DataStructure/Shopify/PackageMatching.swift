	//
	//  PackageMatching.swift
	//  DataStructure
	//
	//  Created by Jigs Sheth on 12/29/21.
	//  Copyright © 2021 jigneshsheth.com. All rights reserved.
	//

import Foundation


let cam = "Cam"
let game = "Game"
let blueray = "Blue"


var size_weight_map = [cam:25,game:50,blueray:100]

struct Item:Hashable, Comparable,CustomStringConvertible {
	var name:String
	var sizeWeight:Int
	var description: String {
		return name
	}
	static func < (lhs: Item, rhs: Item) -> Bool {
		return lhs.sizeWeight > rhs.sizeWeight
	}
}

struct Package:CustomStringConvertible {
	var items:[Item]
	var size:String
	
	var description:String {
		return "\(size):\(items)"
	}
	
}


struct PackageMatching {
	
	func getPackages(items:[String]) -> [Package]{
		
		var output:[Package] = []
		
		let sortedItems = items.filter{ $0 == cam || $0 == blueray || $0 == game }.map{ i in
			Item(name: i, sizeWeight:size_weight_map[i]!)
		}.sorted()
		
		var item_map:[Item:Int] = [:]
		
		for product in sortedItems {
			if let itemCount = item_map[product] {
				item_map[product] = itemCount + 1
			} else {
				item_map[product] = 1
			}
		}
		
		for (item,count) in item_map {
			if item.name == blueray {
				packging(count: count, size: "L", items: [item])
			}else if item.name == game {
				let numberOfLargePackage = (count / 2)
				packging(count: numberOfLargePackage, size: "L", items: [item,item])
				let numberOfMediumPackage = (count % 2)
				packging(count: numberOfMediumPackage, size: "L", items: [item])
			}else if item.name == cam {
				let numberOfLargePackage = (count / 2)
				packging(count: numberOfLargePackage, size: "L", items: [item,item])
				let numberOfMediumPackage = (count % 2)
				packging(count: numberOfMediumPackage, size: "M", items: [item])
			}
		}
		
		func packging(count:Int,size:String,items:[Item]) {
			for _ in 0..<count {
				output.append(Package(items:items, size:size))
			}
		}
		
		return output
	}
	
	
	
	
}
