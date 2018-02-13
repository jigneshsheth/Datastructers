//: Playground - noun: a place where people can play

/*
 Problem to reolve:
 1. Does accessing self in block, block retain self?
 2. Is [weak self] required in self.service asynchronous call?
 3. Does singleton and static method gurantee no retain cycle?
 4. Do we need [weak self] in DispatchQueue? Why?
 5. When and why we need to do [weak self]?
 */

import UIKit
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true

class Service {
  
  static let url = URL(string: "https://api.overstock.com/cms/live/HP_APPS")!
  var dataTask: URLSessionDataTask?
  
  func test(completion: @escaping (_ data: Data?) -> ()) {
    dataTask = URLSession.shared.dataTask(with: Service.url) { (data, response, error) in
      completion(data)
    }
    dataTask?.resume()
  }
  
  static func staticTest(completion: @escaping (_ data: Data?) -> ()) {
    let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
      completion(data)
    }
    task.resume()
  }
  
  deinit {
    print("deiniting service instance.")
  }
  
}

class SingletonService {
  
  let url = URL(string: "https://api.overstock.com/cms/live/HP_APPS")!
  
  static let shared = SingletonService()
  
  func test(completion: @escaping (_ data: Data?) -> ()) {
    let datatask = URLSession.shared.dataTask(with: url) { (data, response, error) in
      completion(data)
    }
    datatask.resume()
  }
  
  deinit {
    print("deiniting service instance.")
  }
  
}

class TestView: UIView {
  
  let service: Service
  var data: Data? = nil
  lazy var strongBlock: (_ data: Data?) -> () = { data in
    //    print("data in block: \(data)")
    if let selfData = self.data {
      print("self data in block: \(selfData)")
    } else {
      
    }
    
    self.data = data
  }
  
  lazy var weakBlock: (_ data: Data?) -> () = { [weak self] data in
    self?.data = data
  }
  
  override init(frame: CGRect) {
    print("initing test view.")
    service = Service()
    super.init(frame: frame)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError()
  }
  
  func testAccessingSelfInCompletionBlock() {
    service.test { (data) in
      print("data: \(String(describing: self.data))")
    }
  }
  
  func testAssigningDataToSelfInCompletionBlock() {
    service.test { (data) in
      self.data = data
    }
  }
  
  func testSingletonStrongBlock() {
    SingletonService.shared.test(completion: strongBlock)
  }
  
  func testSingletonWeakBlock() {
    SingletonService.shared.test(completion: weakBlock)
  }
  
  func testStaticStrongBlock() {
    Service.staticTest(completion: strongBlock)
  }
  
  func testStaticWeakBlock() {
    Service.staticTest(completion: weakBlock)
  }
  
  func testStrongBlock() {
    service.test(completion: strongBlock)
  }
  
  func testWeakBlock() {
    service.test(completion: weakBlock)
  }
  
  deinit {
    print("deiniting test view.")
  }
  
}

class TestViewController: UIViewController {
  
  let testView: TestView = TestView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
  let queue = DispatchQueue(label: "testQueue")
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.addSubview(testView)
  }
  
  func performSomeTasks() {
    for i in 0..<5 {
      queue.async {
        print("closure \(i) start")
        self.performTask(taskNumber: i)
        print("closure \(i) finish")
      }
    }
  }
  
  func performSomeTasksWithWeakSelf() {
    for i in 0..<5 {
      queue.async { [weak self] in
        print("closure \(i) start")
        self?.performTask(taskNumber: i)
        print("closure \(i) finish")
      }
    }
  }
  
  func performTask(taskNumber: Int) {
    print("Start performing task \(taskNumber)")
    Thread.sleep(forTimeInterval: 3.0)
    print("Finish performing task \(taskNumber)")
  }
  
  deinit {
    print("deiniting vc.")
  }
  
}

var testVC: TestViewController? = TestViewController()

//testVC?.testView.testAccessingSelfInCompletionBlock()
//testVC?.testView.testAssigningDataToSelfInCompletionBlock()
//testVC?.testView.testStrongBlock()
//testVC?.testView.testWeakBlock()
//testVC?.testView.testSingletonStrongBlock()
//testVC?.testView.testSingletonWeakBlock()
//testVC?.testView.testStaticStrongBlock()
//testVC?.testView.testSingletonWeakBlock()

//testVC?.performSomeTasks()
//Thread.sleep(forTimeInterval: 3.0)


testVC?.performSomeTasksWithWeakSelf()
Thread.sleep(forTimeInterval: 3.0)

print("try to deinit test vc")
testVC = nil


/* Conclusion
 
 - Singleton and Static doesn't gurantee no retain cycle
 
 */








