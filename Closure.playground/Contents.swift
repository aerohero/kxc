import UIKit

// Closure
/* 클로저도 (함수와 마찬가지로) 코드블록이다.
 함수가 반복적으로 사용하는 것에 초점이 맞춰져 있다면
 클로저는 코드블록을 다른 곳으로 전달하는데 초점이 맞춰져 있다.
 그래서 주로 코드를 파라미터로 전달할 때 사용한다.
 그러므로 클로저 표현식은 글로벌 스코프에서 단독으로 사용할 수 없다.
 사실 함수도 크게 보면 클로저이다.
 
 Function > Named Closure
 Closure > Unnamed Closure
 즉 클로저는 이름없는 함수, 즉 이름없는 코드블록이라고 부를 수 있다.
 
 Function;
 func name(params) -> Type { ... }

 Closure;
 { (params) -> Type in
 }
 
 params이 없을 수도 있고
 return type이 없을 수도 있다.
 params와 return type이 모두 없는 경우, 가장 단순한 형태의 클로저는 Braces만 남게 된다.
 
 {
 code
 }
 
 or
 
 { code }
 
*/
// 파라미터와 리턴형이 없는 가장 단순한 형태의 함수를 선언해보면
func sayHello() {
    print("Hello, World!")
}
//
//sayHello()
//
/*
{ print("Hello, Closure") } // Closure Expression
*/
// 클로저 표현식은 글로벌 스코프에서 단독으로 사용할 수 없다.
// 보통 코드를 파라미터로 전달하기 때문에
// 클로저에 이름을 붙여서 호출할 수 있다.
// 클로저는 이름이 없지만, 간접적으로 이름을 붙일 수 있고, 이렇게 하면 호출도 가능하다.
//let a = { print("Hello, Closure") }
//
//a()

//let b = sayHello() // 왼쪽 코드는 함수를 상수에 저장하려 한 것이지만, 이는 함수를 호출하는 것이고, 결과적으로는 함수를 호출해 상수 b에 저장하도록 선언한 것이다. 함수를 상수에 저장하기 위해선 아래를 더 읽어라.
//print(b)
/* ()는 void라는 특별한 type이다.
 void type을 옵셔널 타입과 혼동하는 경우가 많은데,
 옵셔널 타입은 값이 있는 경우가 있고, 없는 경우가 있다.
 그런데 void 타입은 항상 값이 없다. = return 값이 없다는 뜻이다.
 즉 보이드 타입에는 값을 저장할 수 없다. = DK 그래서 파라미터를 전달한다고 하는 거 같다. 아니 이건 이해를 잘못한 거 같다.
 */

//let c: Void = sayHello() // 함수에서 저장하는 (즉 리턴하는) 값이 없으므로 c를 Void 타입으로 선언해야 한다.
//let d: () = sayHello()
//
//let e = sayHello // 함수를 상수 e에 저장할 수 있다. 즉 함수를 상수 e에 저장하기 위해선 함수 뒤에 붙은 괄호 ()를 삭제해야 한다. 그리고
//let h: () = sayHello // 라고 선언하면 함수가 h에 저장되지 못하고 에러가 발생한다. 아래와 같이 고처야 에러가 없어진다.
// 함수를 선언할 때는 리턴형(리턴 타입)을 생략해도 되지만, 함수 타입을 표기할 때는 파라미터와 리턴타입을 함께 선언해줘야 한다.
//let f: () -> () = sayHello
//let g: () -> Void = sayHello
//
//
func add(h: Int, i: Int) -> Int { // h, i는 파라미터다. 아규먼트 레이블이 아니다.
    return h + i
}

let addFunction = add(h: 10, i: 25)
//print(addFunction)
//
//let addFunction = add
//let addFunction: (Int, Int) -> Int = add
//
func execute(codeBlock: () -> ()) {
    codeBlock()
}
// 여기서 codeblock은 parameter다. Argument Label이 아니다.

execute(codeBlock: { print("Hi") })
// 함수를 호출
// 하면서 파라미터가 수행할 코드를 클로저로 전달한 것이다.
execute(codeBlock: sayHello)
//
//let arithmeticFunction = { (a: Int, b: Int) -> Int in
//    return a + b
//}
////클로저에 이름을 붙였다.
//arithmeticFunction(1, 2) // 클로저에는 Argument Label이 없으므로, 파라미터만 써야 한다. 함수처럼 Argument Label을 쓰면 에러가 발생한다.

//let optionalFunction: (Int, Int) -> Int? = nil
// 함수 자체를 옵셔널로 선언해야 한다.
//let optionalFunction: ((Int, Int) -> Int)? = nil
// 함수의 타입 자체가 옵셔널인 경우다.
// 함수의 타입 자체가 옵셔널인 경우와, return값이 옵셔널인 경우는 다른 것이다.
// 함수 선언에서의 return 값 옵셔널 선언은 요구사항이라면,
// 아래 클로저에서에서 상수 선언시(요구사항 선언시) return 타입을 옵셔널로 설정했다고 하더라도, 아래 클로저에서의 코드는 값을 언제나 Int로 return하게 되므로, 컴파일 상에 문제가 되지 않아, 에러가 발생하지 않는다.
// 때문에 이를 문법적 허용이라고 하고, 즉 반대의 경우엔 에러가 발생한다.
// 요구사항(선언시)에서 Int로 선언했는데, 클로저 내의 코드는 옵셔널을 리턴하도록 하면 에러가 난다.
//let arithmeticFunction: (Int, Int) -> Int? = { (a: Int, b: Int) -> Int in
//    return a + b
//}
// 아래는 함수의 타입 자체가 옵셔널이므로 return 값이 옵셔널인 경우에 해당한다.
let arithmeticFunction: ((Int, Int) -> Int)? = { (a: Int, b: Int) -> Int in
    return a + b
}
// 반면 아래의 경우는 에러가 발생한다.
//let arithmeticFunction: (Int, Int) -> Int = { (a: Int, b: Int) -> Int? in
//    return a + b
//}
//
//func sayHello(with name: String?) -> String {
//    // 파라미터가 nil일수도 있으므로 옵셔널로 선언, 그러나 리턴값은 넌옵셔널이어야 한다.
//    // DK 파라미터가 nil인 경우에 방문자님 안녕하세요.를 러턴할 것이므로
//    if let name {
//        return "\(name), 안녕하세요 :)"
//    } else {
//        return "방문자님, 안녕하세요 :)"
//    }
//}
func sayHello(with name: String = "방문자님") -> String {
    return "\(name), 안녕하세요 :)"
}
// 파라미터에 초기값을 저장할 수 있다.
// 그런데 초기값은 파라미터를 전달하지 않았을 때만 사용되므로.
sayHello(with: "테일러 스위프트")
sayHello()
