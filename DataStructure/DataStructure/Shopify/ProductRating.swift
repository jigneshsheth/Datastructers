//
//  ProductRating.swift
//  DataStructure
//
//  Created by Jigs Sheth on 11/4/21.
//  Copyright © 2021 jigneshsheth.com. All rights reserved.
//

import Foundation


// have  array with this input
// Class Product - title, popularity, price.
// Equatable, comparable  ( == , < ) // two dimention comparison
// description: {return title}
// create Array of products
// array.sort()/ sorted()
// print the array

class ProductRating:Comparable,CustomStringConvertible  {
	
	var title:String
	var popularity:Int
	var price:Int
	
	public init(title:String, popularity:Int,price:Int) {
		self.title = title
		self.popularity = popularity
		self.price = price
	}
	
	public static func < (lhs: ProductRating, rhs: ProductRating) -> Bool {
		
		if lhs.popularity == rhs.popularity {
		return lhs.price < rhs.price
		}
		return lhs.popularity > rhs.popularity
	}
	
	static func == (lhs: ProductRating, rhs: ProductRating) -> Bool {
		return lhs.title == rhs.title && lhs.price == rhs.price && lhs.popularity == rhs.popularity
	}
	
	var description:String {
	return self.title
	}
}

//
//
//	var inputArray = ["Selfie Stick,98,29",
//"iPhone Case,90,15",
//"Fire TV Stick,48,49",
//"Wyze Cam,48,25",
//"Water Filter,56,49",
//"Blue Light Blocking Glasses,90,16",
//"Ice Maker,47,119",
//"Video Doorbell,47,199",
//"AA Batteries,64,12",
//"Disinfecting Wipes,37,12",
//"Baseball Cards,73,16",
//"Winter Gloves,32,112",
//"Microphone,44,22",
//"Pet Kennel,5,24",
//"Jenga Classic Game,100,7",
//"Ink Cartridges,88,45",
//"Instant Pot,98,59",
//"Hoze Nozzle,74,26",
//"Gift Card,45,25",
//"Keyboard,82,19"]
//
// var modifiedArray:[Product] = []
//
// for val in inputArray
//{
//	// print(val)
//	let prod = val.components(separatedBy: ",")
//	modifiedArray.append(Product(title:prod[0],popularity:Int(prod[1])!,     price:Int(prod[2])!))
//}
//
//var result = modifiedArray.sorted()
//for val in result{
//	print(val)
//}
//
/*
Your previous Plain Text content is preserved below:

Simple Product Sorting

Description

Write a program that sorts a list of comma separated products.

Each input row looks like "TITLE,POPULARITY,PRICE". Meaning "Selfie Stick,98,29" says we sold 98 "Selfie Stick"s at 29 dollars each. All numbers are integers. The input will be provided in a hardcoded array so no file I/O is needed.

The list should be sorted by:

By most popular first.
If products are equally popular, sort by cheapest price (lower is better).

You don't need to write your own sorting algorithm. It's recommended to use a built-in sorting library.

Example

If the input is the following array:

"Selfie Stick,98,29",
"iPhone Case,90,15",
"Fire TV Stick,48,49",
"Wyze Cam,48,25",
"Water Filter,56,49",
"Blue Light Blocking Glasses,90,16",
"Ice Maker,47,119",
"Video Doorbell,47,199",
"AA Batteries,64,12",
"Disinfecting Wipes,37,12",
"Baseball Cards,73,16",
"Winter Gloves,32,112",
"Microphone,44,22",
"Pet Kennel,5,24",
"Jenga Classic Game,100,7",
"Ink Cartridges,88,45",
"Instant Pot,98,59",
"Hoze Nozzle,74,26",
"Gift Card,45,25",
"Keyboard,82,19"


The sorted output should be:

Jenga Classic Game
Selfie Stick
Instant Pot
iPhone Case
Blue Light Blocking Glasses
Ink Cartridges
Keyboard
Hoze Nozzle
Baseball Cards
AA Batteries
Water Filter
Wyze Cam
Fire TV Stick
Ice Maker
Video Doorbell
Gift Card
Microphone
Disinfecting Wipes
Winter Gloves
Pet Kennel






 */

