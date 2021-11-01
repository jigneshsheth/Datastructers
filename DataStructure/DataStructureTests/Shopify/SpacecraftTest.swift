//
//  SpacecraftTest.swift
//  DataStructureTests
//
//  Created by Jigs Sheth on 10/31/21.
//  Copyright © 2021 jigneshsheth.com. All rights reserved.
//

import XCTest
@testable import DataStructure

class SpacecraftTest: XCTestCase {
	
	override func setUpWithError() throws {
		// Put setup code here. This method is called before the invocation of each test method in the class.
	}
	
	override func tearDownWithError() throws {
		// Put teardown code here. This method is called after the invocation of each test method in the class.
	}
	
	func testSpacecarft() throws {
		let spaceCraft = Spacecraft(position: Point(x: 0, y: 0))
		while true {
			print("\n ---- Choose 1 below option --- \n")
			print(" ---- Choose W to Move UP --- ")
			print(" ---- Choose A to Move Left --- ")
			print(" ---- Choose D to Move Right --- ")
			print(" ---- Choose S to descrease the speed --- \n")
			print(" ---- Reset R ---")

			
			guard let selection = readLine()?.uppercased(), selection.contains("W") || selection.contains("A") || selection.contains("S") || selection.contains("D") || selection.contains("R") else {
				print("\n##### Wrong key selection ###########\n")
				continue
			}
			
			switch selection {
			case "W","S":
				print(" ---- Enter valid speed: between 1 to 5 --- \n")
				guard let value = readLine(),let speed = Int(value) else {
					print("\n ## Enter valid speed ##\n")
					continue
				}
				spaceCraft.setSpeed(speed: speed)
				print("Move up")
			case "A":
//				print(" ---- Move Left --- \n")
//				guard let value = readLine(),let leftPoint = Int(value) else {
//					print("\n ## Invalid entry  ##\n")
//					continue
//				}
//				spaceCraft.moveLeft(position:leftPoint)
				spaceCraft.moveLeft(position:1)
			case "D":
//				print(" ---- Move Right --- \n")
//				guard let value = readLine(),let rightPoint = Int(value) else {
//					print("\n ## Invalid entry  ##\n")
//					continue
//				}
//				spaceCraft.moveRight(position:rightPoint)
				spaceCraft.moveRight(position:1)
			case "R":
				spaceCraft.reset()
			default:
				print("\n##### Wrong key selection ########### \n")
			}
			
			print(spaceCraft.description)
			
		}
	}
	
	func testPerformanceExample() throws {
		// This is an example of a performance test case.
		self.measure {
			// Put the code you want to measure the time of here.
		}
	}
	
}
