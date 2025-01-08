import UIKit

var greeting = "Hello, playground"
greeting.count.description
// 체이닝. chaining

var optionalGreeting: String? = "Hello, Swift"

greeting
optionalGreeting

optionalGreeting?.count
optionalGreeting!.count // optionalGreeting의 값이 nil인 경우, crash가 발생하므로 강제 언래핑하지말자!
