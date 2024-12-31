//
//  UILabel+Lotto.swift
//  Lotto
//
//  Created by Sean on 12/10/24.
//

import UIKit

extension UILabel {
    func setLottoNumber(_ number: Int, with backgroundColor: UIColor? = nil, textColor: UIColor? = nil) {
        layer.cornerRadius = bounds.width / 2 // 원형으로 만들기
        clipsToBounds = true // 원형으로 만들기
        
        text = "\(number)" // 배열의 값을 불러오기 위해선 인덱스를 사용해야 한다.

        self.backgroundColor = backgroundColor ?? getColors(from: number).backgroundColor
        self.textColor = textColor ?? getColors(from: number).textColor
    }
// access modifier 접근 지정자
//    fileprivate func getColors(from number: Int?) -> (backgroundColor: UIColor, textColor: UIColor) { // Named Tuple
//            guard let number else {
//                return (UIColor.purple, UIColor.white) // number가 nil이면, else 블록으로 가서 return 한다.
//            }
        fileprivate func getColors(from number: Int) -> (backgroundColor: UIColor, textColor: UIColor) { // number라는 파라미터가 항상 값을 받을 것이므로 옵셔널일 필요가 없다. 그러므로 옵셔널 바인딩도 필요없다.
                        
            switch number {
                case 1 ... 10:
                    return (UIColor.yellow, UIColor.black)
                case 11 ... 20:
                    return (UIColor.blue, UIColor.white)
                case 21 ... 30:
                    return (UIColor.red, UIColor.white)
                case 31 ... 40:
                    return (UIColor.gray, UIColor.white)
                case 41 ... 45:
                    return (UIColor.green, UIColor.black)
                default :
                    return (UIColor.purple, UIColor.white)
            }
        }
}


