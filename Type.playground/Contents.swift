import UIKit

//struct Person {
//    var name: String
//    var age: Int
//    
//    func speak() {
//        print("Hello, my name is \(name)")
//    }
//}
//
//let p = Person(name: "John", age: 25)
//// 이렇게 하면 새로운 메모리 공간이 만들어지고, 생성한 이름과 나이가 Person이라는 타입으로 저장된다. = 새로운 인스턴스가 생성되는 것이다. 그리고 상수 p가 인스턴스의 이름이 된다.
//p.name
//p.age
//p.speak()
//
//let name = "Paul"
//name
// name이 스코프도 다르고 접근방법도 다르기 때문이다.

//class Person {
//    var name: String
//    var age: Int
//    
//    func speak() {
//        print("Hello, my name is \(name)")
//    }
//    
//    init() { // initializer 파라미터가 없는 경우로 선언;
//        name = "Park"
//        age = 43
//    }
//}
//
//let p = Person()

class Person {
    var name: String
    var age: Int
    
    func speak() {
        print("Hello, my name is \(name)")
    }
    
    init(name: String, age: Int) {
        self.name = name // self.name의 name은 앞에서 선언한 속성의 name이고, = 다음의 name은 생성자 initializer의 parameter name이다.
        self.age = age
    }
}

let p = Person(name: "Kim", age: 30)

