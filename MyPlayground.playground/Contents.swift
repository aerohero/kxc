/* 2024.11.10.
 다시 swift playground를 시작하다. */

import UIKit
// 애플이 미리 만들어놓은 코드를 내가 가져다 사용하겠다는 의미.
// 프레임워크를 임포트한다.라고 말한다.
// 잘 만들어진 코드가 프레임워크나 라이브러리라는 이름으로 곳곳에 퍼져있다.
// Framework 특정 기능을 구현한 코드를 하나의 이름으로 포장해 놓은 것

var greeting = "Hello, swift"

print(greeting)

print(greeting)
// print는 함수다.
// 프로그래밍에서는 함수를 호출한다.라고 말한다.

dump(greeting)
// print와 dump로 값을 출력할 수 있다.
// dump가 print보다 좀 더 자세한 정보를 출력한다.

// gutter
// debug area 화면 아래쪽에서 실행 결과가 표시되는 영역을 의미
// console 디버그 영역에서 결과를 출력하는 공간을 의미
// 왼쪽 result sidebar
// result sidebar 네모박스 클릭하면 본문에 결과값을 출력하는 박스가 생긴다. 이것을 result OR result view 라고 한다.
// result sidebar 쪽에 커서를 가져다대면, 눈 모양이 표시되는데, 이것을 클릭하면 result sidebar에 팝업창이 뜨면서 결과값을 보여준다. 이를 quick look이라고 한다.

// Live Issue 코드 에러 상황을 코멘트해주는 것

// 단축키 실행 관련
// shift + enter 커서 위치까지 실행

UIImage(systemName: "star")

var sum = 0
for i in 1...10 {
    sum += i
}
print(sum)

// 주석 comment

/* 문단 주석 방법
 라인 수에 관계없이 아래의 모든 텍스트가 주석으로 변한다.
  */

// Inline comment 코드 사이에 주석을 달 수도 있다.
// 사용방법은 /* */
// 다만 코드의 가독성을 떨어뜨리게 되므로 가능하면 사용하지 않는 것이 좋다.

UIImage(systemName: /* 인라인 주석 사용 예시 */ "star")

// 세미콜론 ;
// 자바 등의 언어는 코드가 끝나는 지점에 세미콜론을 사용해야 하지만, 스위프트는 사용하지 않아도 된다. 사용해도 된다. 사용해도 되지만 사용하지 않도록 한다.

// 스위프트는 대소문자를 엄격히 구분하는 언어다.


