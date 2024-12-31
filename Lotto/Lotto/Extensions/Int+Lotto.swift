//
//  Int+Lotto.swift
//  Lotto
//
//  Created by Sean on 12/10/24.
//

import Foundation

extension Int {
    static func uniqueRandomNumbers(in range: ClosedRange<Int>, count: Int) -> [Int] {
        var nums = [Int]() // 빈 배열을 만든다.
        while nums.count < count {
            let rnd = Int.random(in: 1 ... 45) // 숫자 랜덤 뽑기
            if !nums.contains(rnd) { // 랜덤 숫자의 중복을 방지하기 위한 장치
                nums.append(rnd) // 랜덤으로 뽑힌 숫자값을 nums 변수에 집어넣는 코드
            }
        }
        
        nums.sort()
        
        return nums
    }
}
