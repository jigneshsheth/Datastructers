	//
	//  CartDiscount.swift
	//  DataStructure
	//
	//  Created by Jigs Sheth on 12/29/21.
	//  Copyright © 2021 jigneshsheth.com. All rights reserved.
	//

import Foundation
import UIKit

	//
	//Write a function that takes input of arrays and loops over them to calculate return values based on some criteria. For example, take this array [['oranges', 1], ['apples', 2], ['grapes', 7]]. Based on this array return total costs if second array property is a quantity and product is first array item. If say Oranges cost $5, and user buys the quantity of 2 or more, apply a 20% discount etc.. Return total cost from array by adding them all up.


let apple = "Apple"
let orange = "Orange"
let grapes = "Grapes"

protocol CartItem:CustomStringConvertible {
	var name:String {get}
	var price:Int {get}
	var qty:Int {get}
	var description:String { get}
	func getItemDiscount() -> Double
	func getTotalPrice() -> Double
	
}

extension CartItem{
	
	var description:String {
		return name
	}
	
	static func == (lhs:CartItem,rhs:CartItem) -> Bool{
		return lhs.name == rhs.name
	}
	
	func getTotalPrice() -> Double {
		return Double(qty * price)
	}
	func getItemDiscount() -> Double {
		return 0.0
	}
	
	
}

struct Orange:CartItem {
	let name: String = orange
	let price: Int = 5
	var qty: Int
	
	init(qty:Int){
		self.qty = qty
	}
	
}



struct Grapes:CartItem {
	let name: String = grapes
	let price: Int = 10
	var qty: Int
	init(qty:Int){
		self.qty = qty
	}
	
	func getItemDiscount() -> Double  {
		if (qty >= 2 && qty < 5) {
			return 20.0 / 100.0
		} else if (qty >= 5 && qty < 10) {
			return 30.0 / 100.0
		}else if  qty >= 10 {
			return 40.0 / 100.0
		}
		return 0.0
	}
	
}

struct Apple:CartItem {
	let name: String = apple
	let price: Int = 8
	var qty: Int
	
	init(qty:Int){
		self.qty = qty
	}
	
	
	func getItemDiscount() -> Double  {
		if (qty >= 2 && qty < 5) {
			return 20.0 / 100.0
		} else if (qty >= 5 && qty < 10) {
			return 30.0 / 100.0
		}else if  qty >= 10 {
			return 40.0 / 100.0
		}
		return 0.0
	}
	
}


struct Cart {
	var items:[CartItem]
	var totalQty:Int {
		return items.map{ $0.qty}.reduce(0,+)
	}
	func getTotal() -> Double {
		return items.map{ $0.getTotalPrice()}.reduce(0,+)
	}
	
	func getDiscountedPrice() -> Double {
		var totalPrice:Double = 0.0
		print(items)
		
		for item in items {
			let itemDiscount = item.getItemDiscount() * item.getTotalPrice()
			print("item Discount \(itemDiscount) \n")
			totalPrice = totalPrice + item.getTotalPrice() - itemDiscount
		}
		return totalPrice
	}
	
	func cartLevelDiscount() -> Int {
		return 0
	}
	
	
}

struct CartDiscount {
	
	
	func getTotalCost(_cartItems:[(String,Int)]) -> Double{
		
		var cartItems:[CartItem] = []
		for (item,qty) in _cartItems {
			if item == apple {
				cartItems.append(Apple(qty: qty))
			}else if item == orange {
				cartItems.append(Orange(qty: qty))
			} else if item == grapes {
				cartItems.append(Grapes(qty: qty))
			}
		}
		
		print("Cart Items::\(cartItems)")
		let cart = Cart(items: cartItems)
		
		print(cart.getTotal())
		print(cart.totalQty)
		
		var total:Double = 0
		
		total = cart.getDiscountedPrice()
		
		return total
	}
	
}
