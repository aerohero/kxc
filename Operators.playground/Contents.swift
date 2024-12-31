import UIKit

let a = 12
let b = 34

//+a // 전치 연산자, Prefix Operator
//
//a + b
//
//12 + 34
//
//a + 56
//
//-a
//-b
//
//+a
//-a
//
//a - b
//
//a * b
//
//a / b
//b / a
//
//let c = Double(a)
//let d = Double(b)
//
//c / d
//d / c
//
//a % b
//// c % d
//
//c.truncatingRemainder(dividingBy: d)
//
//"123"
//
//var num = Int("123")
//num = Int("one")


a == b
a != b

a > 12
a >= 12

let c = 33

if c % 2 == 0 { // if block
    print("짝수")
} else { // else block
    print("홀수")
}


let weekday = Calendar.current.component(.weekday, from: .now)

if weekday == 1 {
    print("일요일")
} else if weekday == 2 { // else if block
    print("월요일")
} else if weekday == 3 {
    print("화요일")
} else if weekday == 4 {
    print("수요일")
} else if weekday == 5 {
    print("목요일")
} else if weekday == 6 {
    print("금요일")
} else {
    print("토요일")
}










