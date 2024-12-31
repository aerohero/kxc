import UIKit

// var greeting = "Hello, playground"

//let fruits = ["apple", "banana", "orange"]
//for fruit in fruits {
//    print(fruit)
//}
//
//var count = 1
//
//while count <= 5 {
//    print("current count: \(count)")
//    count += 1
//}
//        
//var optionalName: String?
//optionalName = "삶은 개발"
//print(optionalName)
//
//// if let, guard let
////func ifLetOptional() {
////    if let optionalName2 = optionalName{
////        print(optionalName2)
////    }
////}
////ifLetOptional()
//
//func guardLetOptional() {
//    guard let optionalName else { return }
//    print(optionalName)
//}

//optionalName!.append("append")
//print(optionalName!)

// 함수
// 작업 수행 / 값을 변환

//func add(a: Int, b: Int) -> Int {
//    return a + b
//}
//let result = add(a: 1, b: 2)

//func sayHello(to name: String) {
//    print("Hello \(name)")
//}
//
//sayHello(to: "Daehong")

// 구조체 / 클래스
// Container 변수와 상수 / 함수

class Person {
    var name: String
    
    init(
        name: String
    ) {
        self.name = name
    }
    
    func sayHello() {
        print("Hello \(name)")
    }
}

var personA: Person = .init(name: "Leedi")
// personA.sayHello()
var personB = personA
personA.name = "삶은 개발"
personA.sayHello()
personB.sayHello()
    

