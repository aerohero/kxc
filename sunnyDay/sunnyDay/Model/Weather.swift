//
//  Weather.swift
//  sunnyDay
//
//  Created by Sean on 12/10/24.
//

import UIKit

enum Weather: String {
    case clear = "맑음"
    case cloudy = "흐림"
    case rain = "비"
    case snow = "눈"
    
    var image: UIImage? {
        switch self {
            case .clear:
                return UIImage(named: "016-sun")
            case .cloudy:
                return UIImage(named: "001-cloud")
            case .rain:
                return UIImage(named: "002-cloud")
            case .snow:
                return UIImage(named: "004-cloud")
        }
    }
    
    func getDescription(matching temperature: Int) -> String? {
        switch temperature {
            case ..<(-10): // 단항 연산자이므로 띄어쓰기 없이 붙여써야 한다. 괄호는 '-'기호 때문에 붙여야 한다.
                return "이불 밖은 위험해요."
            case -10 ... 10:
                return "두툼한 패딩을 챙기세요."
            case 11 ... 20:
                return "일교차를 조심하세요."
            case 21 ... 30:
                return "여름이 다가오고 있어요."
            case 30... : // 단항 연산자이므로 띄어쓰기 없이 붙여써야 한다.
                return "더운 여름날씨예요."
            default:
                return nil
            }
    }
}


