import UIKit

//Tuple

//let a = (1, 2, 3)
//let b: (Int, Int, Int) = (1, 2, 3)
/* Tuple
 Tuple Type
 Tuple Value
 
 Tuple vs. Array(배열)
 Tuple; 다른 타입의 값도 같이 저장 가능
    나중에 타입?을 새로 추가하거나 삭제 불가능
 Array; 다른 타입의 값도 같이 저장 불가능
    나중에 값을 새로 추가하거나 삭제 가능
 */
//(1, 3, 5)
//(1, 3.24, "5")
//[1, 4, "Hello"]

var a: (Int, Int, Int) = (1, 2, 3)
var b = ("문자열", 123, 123.45)

b.0
b.1
b.2
let str = b.0

b.0 = "새로운 문자열"
// b.0 = 10

var str2 = "Hello"
str2.append("Swift")
str2
str2.appending("!!!") // 새로운 값으로 return하는데
str2 // 원래 값을 바꾸진 않는다.


