//
//  Spacecraft.swift
//  DataStructure
//
//  Created by Jigs Sheth on 10/31/21.
//  Copyright © 2021 jigneshsheth.com. All rights reserved.
//
/**
Here’s some more info about the project.

The ship’s starting coordinates are (0, 0), which is on Earth.
The ship’s destination is (0, 250), which is on the moon.
The ship will be controlled over a CLI using a standard keyboard as follows:

The ship starts at (0, 0) at 0 speed, i.e. at complete rest.
The ship only moves when a valid key is pressed.
Pressing W increases the ship’s speed and then moves it forward by speed units.
The ship’s maximum speed is 5.
Pressing S decreases the ship’s speed and then moves it forward by speed units.
The ship’s minimum speed is 0.
After launch, the ship cannot go below speed 1, i.e. it always moves forward until it reaches the moon.
Pressing A and D move the ship left and right by one unit respectively.
The ship also moves forward by speed units.

Problem
Write a CLI program in your preferred language to simulate the above spacecraft. Display output as follows:

Begin with (0, 0) ready for launch.
After every movement, display the updated position.
If the ship goes more than 5 points to the left/right, display wrong trajectory.
If the ship tries to decrease the speed below 1, display minimum speed.
If the ship tries to increase the speed over 5, display maximum speed.
When the ship reaches (0, 250) display on the moon.
If the ship goes beyond 250 on the y-axis, display contact lost.

Sample output
(0, 0) # Begin with original position.
(0, 1) # W increases the speed to 1 and moves forward.
(0, 3) # W increases the speed to 2 and moves forward.
(-1, 5) # A moves the ship left and forward.
(0, 7) # D moves the ship right and forward.
(0, 8) # S decreases the speed to 1 and moves forward.
...
(0, 250) on the moon # Ship reaches the moon.
*/
import Foundation


/// Point is representing the (x,y) co-ordinate on the plan
struct Point: Equatable,CustomStringConvertible {
	
	var x:Int
	var y:Int
	
	init(x:Int,y:Int) {
		self.x = x
		self.y = y
	}
	
	var description:String {
		return "(x : \(x) , y: \(y))"
	}
	
	static func == (lhs: Point, rhs: Point) -> Bool {
		return lhs.x == rhs.x && lhs.y == rhs.y
	}
}

class Spacecraft {
	private var position:Point
	private(set) var speed:Int = 0
	
	init(position:Point) {
		self.position = position
	}
	
	func moveLeft(position:Int){
		let currentX = self.position.x
		let futureX = currentX - position
		if currentX < -5 || futureX < -5 {
			print("## current value is not allowed : \(self.position.description) ##")
		}else {
			self.position.x -= position
			moveUp()
		}
	}
	
	func setSpeed(speed:Int){
		if speed < 1 {
			print("## Minimum speed is 1  ##")
		}else if speed > 5{
			print("## Maximum speed is 5  ##")
		}else{
			self.speed = speed
			moveUp()
		}
	}
	
	func moveRight(position:Int){
		let currentX = self.position.x
		let futureX = currentX + position
		if currentX > 5 || futureX > 5 {
			print("## current value is not allowed : \(self.position.description) ##")
		}else {
			self.position.x += position
			moveUp()
		}
	}
	
	func reset(){
		self.position = Point(x:0,y:0)
		self.speed = 0
	}
	
	/// Moving up with y axis
	func moveUp(){
		self.position.y += speed
	}
	
	/// description
	var description:String {
		if self.position == Point(x:0,y:50) {
			return "***** Spacecraft reaches moon ***** "
		}else if self.position.y > 50 {
			return "***** Spacecraft is not reachable ***** "
		}else {
			return "Current Position: "+self.position.description
		}
	}
	
}


