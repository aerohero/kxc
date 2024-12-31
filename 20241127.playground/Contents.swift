import UIKit

let num = 1

// value matching
switch num {
    case 1: // num == 1
        print("one")
    case 0:
        print("zero")
    default:
        print("other") // or break
}

// interval matching

// swift에선 범위를 표현할 때 ...을 사용
// 1 ... 10
// closed range operator

// 1 ..< 10 half-open range operator
// 1 ... 9 동일한 뜻이 된다.

// 10 ... 1 이 경우는 안된다. 에러발생

// lower bound: 시작 범위
// uppper bound: 종료 범위
// lower bound <= upper bound
// 해결법: (1 ... 10).reversed()

let num2 = 2

switch num {
    case 1: // num == 1
        print("one")
    case 0:
        print("zero")
    default:
        print("other") // or break
}

