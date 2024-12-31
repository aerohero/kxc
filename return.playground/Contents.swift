import UIKit

/*
 { }
 Braces가 코드블록인데
 코드블록 밖에서 즉, 글로벌 스코프에서 선언하면, 함수.
 코드블록 안에서, 정확히는 클래스나 구조체 같은 타입 안에서 선언하면 Method라고 부른다.

 return한다는 것의 의미는,
 함수에서 결과값을 도출해서 함수를 호출한 곳으로 전달한다는 뜻이다.
 */

func generateRandomNumber() -> Int {
    // ReturnType을 선언하고 함수바디에서 리턴값을 작성해주지 않으면, 에러 발생한다.
    // return 0 // 함수를 호출했을 때, 0이라는 값을 return하게 된다.
    return Int.random(in: 1 ... 100)
    /* 아래 함수 호출할 때는 앞에 아무것도 붙이지 않는데,
     메소드; 즉 위의 random은 메소드인데, 메소드의 경우는 앞에 뭔가를 써줘야 한다.
     return은 2가지 역할이 있다.
     1. 스코프를 즉시 종료한다. = 실행을 종료한다.
     2. 값을 리턴하는 것이다.
     */
}

generateRandomNumber() // 함수 호출식
/* 식 > 표현식, Expression
 표현식은, 코드를 실행했을 때, 즉 코드를 평가했을 때,
 하나의 값이 도출되는 코드를 의미한다.
*/

/* nil coalescing operator = nil 병합 연산사 = 이항연산자
 a ?? b
 here, a = Optional_expr 옵셔널 표현식이어야 한다.
 역할 및 기능은,
 a가 nil이라면 b의 값을 return 하지만,
 a가 nil이 아니라면, 즉 a에 값이 있다면, a의 값을 추출해서 return한다.
 값을 추출한다. = Optional Binding한다. = Unwrapping한다.
 */

// let name: String? = "kxcoding"
let name: String? = nil
print(name ?? "웃기다잉")















