import UIKit

func sayHello() {

}

//let a = sayHello // 이것이 function notation이다.
// 함수를 호출하는 것이 아니라, 상수 a에 함수를 저장한 것이다.
let a: () -> () = sayHello // 함수의 타입을 명시하여 선언하면 에러가 없어진다.

func sayHello(with name: String) {
    
}

let b = sayHello(with: "DK") // argument가 존재하는 경우. 이것은 함수를 호출하여 리턴된 값을 저장하는 것이고, function Notation은 아니다.

let c = sayHello(with:) // 이것은 function Notation에 해당한다. argument가 없는 경우.

func sayHello(_ name: String) {
    
}

let d = sayHello(_:)

func add(a: Int, b: Int) -> Int {
    return a + b
}

let e = add
// 바람직하지 않다.
// 정식 문법은 아래와 같다.
let f = add(a:b:)

// function notation에는 파라미터 타입과 리턴값이 포함되지 않는다.
// 때문에 함수의 파라미터 타입이나 리턴 타입을 알고 싶다면, 함수 코드 또는 레퍼런스를 확인해봐야 한다.

print()















