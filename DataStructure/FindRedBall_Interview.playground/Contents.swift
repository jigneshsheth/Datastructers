//: Playground - noun: a place where people can play

func getRedBall<T>(balls:[T]) -> T? {
  
  if balls.isEmpty {
    return nil
  }
  
  let size = balls.count
  let middle = (size / 2) - 1
  
  let leftList:[T] = Array(balls[0..<middle])
  let rightList:[T] = Array(balls[middle+1 ..< size])
  
  if containsRedBall(balls:leftList) {
    return getRedBall(balls:leftList)
  }else if containsRedBall(balls:rightList) {
    return getRedBall(balls:rightList)
  }else {
    return balls[middle]
  }
  
  
}


func containsRedBall<T>(balls:[T]) -> Bool {
  return balls.contains(where:{ ($0 as? Int) == 10 })
}


func getElementInt(balls:[Int]) -> Int? {
  
  if balls.isEmpty {
    return nil
  }
  
  let size = balls.count
  let middle = size / 2
  let leftList:[Int] = Array(balls[0..<middle])
  let rightList:[Int] = Array(balls[middle+1 ..< size])
  
  if containsIntBall(balls:leftList) {
    return getElementInt(balls:leftList)
  }else if containsIntBall(balls:rightList) {
    return getElementInt(balls:rightList)
  }else {
    return balls[middle]
  }
}


func containsIntBall(balls:[Int]) -> Bool {
  return balls.contains(where:{$0 == 11})
}

let temp = [5,10,45,21,22,12,49,29,26,123,11]

if let result = getElementInt(balls:temp) {
  print("Result : \(result)")
}

enum BallColor:String {
  case Red = "Red"
  case Black = "Black"
}

class Ball {
  var color:BallColor = .Black
  
  init(color:BallColor){
    self.color = color
  }
  
  func description(){
    "\(self.color.rawValue)"
  }
}

let balls:[Ball] = [ Ball(color: .Red),Ball(color: .Red),Ball(color: .Red),Ball(color: .Red),Ball(color: .Black)]









