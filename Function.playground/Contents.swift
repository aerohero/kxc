import UIKit

func sayHello() {
    print("Hello")
}

sayHello()

//func sayHello(name: String, age: Int)
func sayHello(with name: String) {
// with, in, on, at = Argument Label
// Object-C와 Swift는 함수이름과 파라미터를 선언할 때, 말이 되도록 하는 것을 선호한다.
// name = ParameterName이다.
// 즉 이름이 2개일 때, 앞의 이름이 Argument Label, 뒤의 이름이 ParameterName인데,
    
    print("Hello, \(name)")
}

// print 함수에는 Argument Label이 생략되어 있는 것이다.
// 생략은 Wildcard Pattern, Wildcard Pattern은 언더스코어 문자.

// func sayHello(_ name: String) {}
// 함수를 호출할 때, Argument Label을 생략해야 한다.

var name = "John"
// sayHello(name: name)
// 함수를 호출할 때는 ParameterName이 아니라, Argument Label을 사용해야 한다.
sayHello(with: "Swift")

func add(a: Int, b: Int) {
    print(a + b) // a, b = Formal Parameter
}

add(a: 1, b: 2)
// 1, 2 = Actual Parameter, Argument, 인자
// a, b = Argument Label = 함수호출할 때 사용하는 parameter
// 안내했던 문법에선 단순히 Parameters라고 했지만, 정확히는 Argument Label이다.

