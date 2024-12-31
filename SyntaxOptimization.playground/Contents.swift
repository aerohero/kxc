import UIKit

//let arr = [1 ... 10] // DK 이거 안된다.
let arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
// 먼저 짝수만 필터링해서, 새로운 배열로 리턴한다.
arr.filter({ (num: Int) -> Bool in
    return num.isMultiple(of: 2)
})
//print(arr)
//
// 문법 최적화. 아래 코드는 위의 코드와 다르게 보이지만, 컴파일러 입장에서는 동일한 코드다.
arr.filter({ (num) in
    return num.isMultiple(of: 2)
})
// 컴파일러는 메소드 선언을 통해서 파라미터 자체도 인식할 수 있다. 그래서 아래와 같이 파라미터 이름을 생략해도 된다. 파라미터 이름을 생략할 땐, In 키워드도 함께 지워야만 한다. 원래 in 키워드의 역할이 파라미터와 코드를 구분하는 것이기 때문. 파라미터를 모두 생략했기 때문에 in 키워드도 필요없어진 것이다. 이렇게 파라미터를 생략, 즉 지우면 더 이상 코드에서 파라미터의 이름을 사용할 수 없다. $0 = $index 사용해야.
arr.filter({
    return $0.isMultiple(of: 2) // short-hand argument name
})
// 여기서, 클로저 바디에 리턴문 하나밖에 없을 땐, return을 생략해도 된다.
// return의 생략은 이때만 가능하다는 점에 주의
//arr.filter({ $0.isMultiple(of: 2) }) // implicit return
// 지금은 클로저가 유일한 파라미터인 동시에, 마지막 파라미터다. 이 경우엔 클로저를 괄호 밖으로 뺄 수 있고, 괄호는 생략이 가능하다.
// 클로저가 괄호 안에 있는 경우를 인라인 클로저라고 한다.
arr.filter() { $0.isMultiple(of: 2) }
arr.filter { $0.isMultiple(of: 2) }

let cast = ["Vivien", "Marlon", "Kim", "Karl"]
//
//cast.filter({ (shortNames: String) -> Bool in
//    return shortNames.count < 5
//})
//
//cast.filter({ (shortNames) in
//    return shortNames.count < 5
//})
//
//cast.filter({
//    return $0.count < 5
//})
//
//cast.filter({ $0.count < 5 })
//
//cast.filter { $0.count < 5 }
//
let expenses = [21.37, 55.21, 9.32, 10.18, 388.77, 11.41]
let hasBigPurchase = expenses.contains(where: { (hasBigPurchase: Double) -> Bool in
    return hasBigPurchase > 100
} )

expenses.contains { $0 > 100 }

cast.contains(where: { (name: String) -> Bool in
    return name.hasPrefix("V")
})

cast.contains { $0.hasPrefix("V") }
