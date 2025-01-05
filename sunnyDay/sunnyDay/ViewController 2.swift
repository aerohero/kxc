//
//  ViewController.swift
//  sunnyDay
//
//  Created by Sean on 11/25/24.
//

import UIKit
//
//enum Weather: String {
//    case clear = "맑음"
//    case cloudy = "흐림"
//    case rain = "비"
//    case snow = "눈"
//    
//    var image: UIImage? {
//        switch self {
//            case .clear:
//                return UIImage(named: "016-sun")
//            case .cloudy:
//                return UIImage(named: "001-cloud")
//            case .rain:
//                return UIImage(named: "002-cloud")
//            case .snow:
//                return UIImage(named: "004-cloud")
//        }
//    }
//}
//
class ViewController: UIViewController {
    
    @IBOutlet weak var weatherImageView: UIImageView!
    
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBOutlet weak var temperatureLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
//    
// naming sample = descriptionLabel
//    
//    func getWeatherImage(matching weather: String) -> UIImage? {
//        // here, matching = Argument Label, weather = ParameterName, ? = 옵셔널
//        switch weather {
//            case "맑음":
//                return UIImage(named: "016-sun")
//            case "흐림":
//                return UIImage(named: "001-cloud")
//            case "비":
//                return UIImage(named: "002-cloud")
//            case "눈":
//                return UIImage(named: "004-cloud")
//            default:
////                break // break는 코드를 중지하는 것은 가능한데, 값을 return하지 못한다.
//            return nil // 기본 이미지가 있다면, 기본 이미지를 넣어주면 된다. 현재는 기본 이미지 없으므로 nil을 리턴하면 된다.
//        }
//    }
//    
//    func getDescription(matching temperature: Int) -> String? {
//        switch temperature {
//            case ..<(-10): // 단항 연산자이므로 띄어쓰기 없이 붙여써야 한다. 괄호는 '-'기호 때문에 붙여야 한다.
//                return "이불 밖은 위험해요."
//            case -10 ... 10:
//                return "두툼한 패딩을 챙기세요."
//            case 11 ... 20:
//                return "일교차를 조심하세요."
//            case 21 ... 30:
//                return "여름이 다가오고 있어요."
//            case 30... : // 단항 연산자이므로 띄어쓰기 없이 붙여써야 한다.
//                return "더운 여름날씨예요."
//            default:
//                return nil
//            }
//    }
//    
    override func viewDidLoad() {
        super.viewDidLoad()
// Do any additional setup after loading the view.
//
//        if weather == "맑음" {
//            weatherImageView.image = UIImage(named: "016-sun")
//        } else if weather == "흐림" {
//            weatherImageView.image = UIImage(named: "001-cloud")
//        } else if weather == "눈" {
//            weatherImageView.image = UIImage(named: "004-cloud")
//        } else if weather == "비" {
//            weatherImageView.image = UIImage(named: "002-cloud")
//        }
//        
//        switch weather {
//            case "맑음":
//                weatherImageView.image = UIImage(named: "016-sun")
//            case "흐림":
//                weatherImageView.image = UIImage(named: "001-cloud")
//            case "비":
//                weatherImageView.image = UIImage(named: "002-cloud")
//            case "눈":
//                weatherImageView.image = UIImage(named: "004-cloud")
//            default:
//                break
//        }
//        
//        let weather = ["맑음", "흐림", "비", "눈"].randomElement() ?? "맑음"
//        let weather = [Weather.clear, Weather.cloudy, Weather.rain, Weather.snow].randomElement() ?? .clear
        let weather = [Weather.clear, .cloudy, .rain, .snow].randomElement() ?? .clear
        // nil coalescing operator (이항 연산자)
        /* 강제추출을 통해 논옵셔널로 선언할 수 있다.
         AppStore에 출시하는 앱의 경우, 강제추출을 사용하지 않는다.
         때문에 옵셔널 바인딩을 통해 해결한다.
         옵셔널 바인딩을 하기 위해선 최소 3줄의 코드를 작성해야 하는데,
         1줄로 끝낼 수 있다. = nil coalescing operator를 사용
         nil 대신 맑음을 return하도록 코딩
         */
//        let weather = "흐림"
//        let weather = ["맑음", "흐림", "비", "눈"].randomElement()
//        let weather = ["맑음", "흐림", "비", "눈"].randomElement()!
        /* 배열의 값을 랜덤하게 선택하도록 한다.
         Self.Element? = 배열에 저장되어 있는 값의 타입
         현재 코드에서는 Optional String이다.
         따라서 위의 메소드에서 weather parameter의 type을 string으로 선언하였기 때문에 에러가 발생한다.
         
         해결방법은 2가지인데
         1. 하나는 메소드에서 weather의 type을 옵셔널 스트링으로 수정하거나
         2. 다른 하나는 바로 위 코드의 weather의 타입을 넌옵셔널로 수정하는 것이다.
         이번에는 두번째 방법으로 수정한다. 왜냐면 현재 코드에서는 배열이 비어있지 않으므로 nil을 고려하지 않아도 되므로.
         
         두변째 방법으로 수정하는 방법도 2가지가 있는데,
         1) Oprional_expr 뒤에 !를 붙여, Non-Optional로 만드는 방법 = 강제추출이므로 권장되지 않는다. = Bad code
         2) nil coalescing operator를 사용하는 방법 = 옵셔널 바인딩을 함에도 코드가 짧다.
         
         그런데 왜 Optional 일까?
         옵션키를 누른 상태에서 커서를 용어에 가져다놓고 클릭하면 reference를 볼 수 있다.
         즉 reference를 보면 알 수 있는데,
         만약 배열이 비어있는 경우에는, 메소드(함수)에서 nil값으로 return 할 수 있어야 하기 때문이다.
         reference를 읽어보면 이러한 내용들을 알 수 있으므로, 자주 보는 연습을 하자!
         */
        let temperature = Int.random(in: -28 ... 40)
//        let temperature = 12
//        
//        weatherImageView.image = getWeatherImage(matching: weather)
        weatherImageView.image = weather.image
        // weatherImageView에 접근해서, image를 바꿀건데,
        // getWeatherImage 메소드를 호출해서 할거다.
        // getWeatherImage 메소드를 호출해서 weather를 전달할거다.
        
        statusLabel.text = weather.rawValue
        
        temperatureLabel.text = "\(temperature)°C"
        
//        descriptionLabel.text = getDescription(matching: temperature)
        descriptionLabel.text = weather.getDescription(matching: temperature)
//        if temperature < -10 {
//            actionGuide.text = "이불 밖은 위험해요."
//        } else if temperature >= -10 && temperature <= 10 {
//            actionGuide.text = "두툼한 패딩을 챙기세요."
//        } else if (11 ... 20).contains(temperature) {
//            actionGuide.text = "일교차를 조심하세요."
//        } else if temperature > 21 && temperature <= 30 {
//            actionGuide.text = "여름이 다가오고 있어요."
//        } else if temperature > 30 {
//            actionGuide.text = "더운 여름날씨예요."
//        }
//
//        switch temperature {
//        case ..<(-10): // 단항 연산자이므로 띄어쓰기 없이 붙여써야 한다. 괄호는 '-'기호 때문에 붙여야 한다.
//            actionGuide.text = "이불 밖은 위험해요."
//        case -10 ... 10:
//            actionGuide.text = "두툼한 패딩을 챙기세요."
//        case 11 ... 20:
//            actionGuide.text = "일교차를 조심하세요."
//        case 21 ... 30:
//            actionGuide.text = "여름이 다가오고 있어요."
//        case 30... : // 단항 연산자이므로 띄어쓰기 없이 붙여써야 한다.
//            actionGuide.text = "더운 여름날씨예요."
//        default:
//            break
//        }
        
    }
}
