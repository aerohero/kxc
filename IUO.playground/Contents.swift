import UIKit

let a: Int? = 0 // 일반적인 경우에 옵셔널 타입을 선언하는 방법

let b: Int! = nil // IUO. 언제 자동으로 추출되는지만 이해하면 된다.

print(a)
print(b)

// let c: Int = a // a가 nil이라면 c에 저장할 수 없기 때문에 에러가 발생
// 옵셔널 타입을 넌옵셔널에 저장하기 위해선 강제추출하거나 옵셔널 바인딩을 해야 한다. 어쨌든 unwrapping해서 저장해야 한다.

let d = b
// let d: Int = b
// 결론은 코드 작성시 IUO는 되도록이면 사용하지 않는다.


