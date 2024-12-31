import UIKit

//for i in 1 ... 10 {
//    print("Hello, World!")
//}

//var sum1 = 0
//var sum2 = 0
//
//for i in 1 ... 100 {
////    sum += i
////    print(sum)
//    if i % 2 == 0 {
//        sum2 += i
//    } else {
//        sum1 += i
//    }
//}
//
//print(sum1)
//print(sum2)
//
//sum1 = 0
//sum2 = 0
//
//for i in 1 ... 100 {
//
//    if !i.isMultiple(of: 2) {
//        sum2 += i
//    } else {
//        sum1 += i
//    }
//}
//
//print(sum1)
//print(sum2)


//for i in 2 ... 9 {
//    for j in 1 ... 9 {
//        var result = i * j
//        print("\(i) X \(j) = \(result)")
//    }
//}


// Array 배열
// 여러개의 값을 한꺼번에 저장하는 것을 Collection이라 한다.
// 배열도 컬렉션 중에 하나고
// 컬렉션에는 배열 이외에도 딕셔너리 Dictionary와 셋 set도 있다.
// 저장하는 방식에 차이가 있다.

//let a = [1, 2, 3, 4, 5]
//
//// 순서가 있고, 순서를 표시하는 것을 인덱스라고 한다.
//// 인덱스는 0부터 시작한다.
//
//a[0]
//a[1]
//a[2]
//
//for num in a {
//    print(num)
//}



//var arr = [Int]()

//for num in 1 ... 10 {
////    arr.append(num)
////    arr.insert(num, at: 0)
//}

//for num in (1 ... 10).reversed() {
//    arr.append(num)
//}

// Wildcard Pattern
// 암기
// 생략은 언더스코어, 언더스코어는 Wildcard Pattern

//for _ in (1 ... 100).reversed() {
//    let num = Int.random(in: 1 ... 20)
//    arr.append(num)
//}
//
//print(arr)
//arr.count
//
//print(arr.count)
//
//print(arr.sorted())
//
//print(arr.count)
//
//print(arr.sorted(by: >))


//for _ in 1 ... 100 {
//    let num = Int.random(in: 1 ... 45)
//    
//    if !arr.contains(num) { // 중복된 번호가 배열에 포함되지 않도록 하기 위한 장치
//        arr.append(num)
//        
//        if arr.count == 7 {
//            break // 제어 전달문. control transfer statement
//        }
//    }
//}


//while arr.count < 7 {  // 인덱스가 0부터 시작하기 때문에, 배열의 값을 7개로 설정하고 싶다면 < 7 로 설정해야 한다.
//    let num = Int.random(in: 1 ... 45)
//    
//    if !arr.contains(num) { // 중복된 번호가 배열에 포함되지 않도록 하기 위한 장치
//        arr.append(num)
//    }
//}

//print(arr)
//print(arr.count)
//print(arr.sorted())


// 옵셔널 Optional










