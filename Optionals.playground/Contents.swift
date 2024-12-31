import UIKit

// Optional

//let num: Int? // Optional Int라고 읽는다.
//num = nil // nil은 값이 없다는 뜻을 나타내는 특별한 키워드다. 다른 언어에선 null이라고 쓴다.


// Non-optional or Non-optional Type

//let num = 123

//let num: Int
//num = 123
//
//print(num)

// 상수나 변수에 초기값을 저장하는 것을 초기화한다고 한다.
// 값을 저장하지 않고, 초기화하는 것이 필요한데, 이것을 Optional이라고 한다.
// 즉 값을 저장하지 않아도 된다는 뜻이다.


//let attendeeCount: Int? = nil
// let attendeeCount: Int? = 0 이 경우는 값 0을 저장하여 초기화한 것이다.
//let name: String? = nil
// let name: String? = "" 이 경우 역시 값을 0으로 저장하여 초기화한 것과 같다.


//let num = 123
//print(num)
//
//let optionalNum: Int? = 123
//print(optionalNum)
//
//// Unwrapping 추출
//
////print(optionalNum!) // Forced Unwrapping 강제추출
//
//
//let a = optionalNum
//print(type(of: a))
//
//let b = optionalNum!
//print(type(of: b))


//let str = "123"
//let num = Int(str)
//print(type(of: num))

// optional binding

let str: String? = "nil"
print(str)
//let num = Int(str!)
//print(num)

if let str = str {
    if let num = Int(str) {
        print(num)
    } else {
        print("타입 컨버전 실패")
    }
} else {
    print("옵셔널 바인딩 실패")
}













