//
//  ViewController.swift
//  Lotto
//
//  Created by Sean on 11/28/24.
//

import UIKit

class ViewController: UIViewController {

    // Connetion Well
    
    @IBOutlet weak var number1Label: UILabel!
    @IBOutlet weak var number2Label: UILabel!
    @IBOutlet weak var number3Label: UILabel!
    @IBOutlet weak var number4Label: UILabel!
    @IBOutlet weak var number5Label: UILabel!
    @IBOutlet weak var number6Label: UILabel!
    @IBOutlet weak var number7Label: UILabel!
    
    @IBOutlet var labels: [UILabel]! // 배열로 선언되어 있다.
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
//        func getColors(from number: Int?) -> (UIColor, UIColor) { // Unnamed Tuple
//    func getColors(from number: Int?) -> (backgroundColor: UIColor, textColor: UIColor) { // Named Tuple
//            guard let number else {
//                return (UIColor.purple, UIColor.white) // number가 nil이면, else 블록으로 가서 return 한다.
//            }
//            
//            switch number {
//                case 1 ... 10:
//                    return (UIColor.yellow, UIColor.black)
//                case 11 ... 20:
//                    return (UIColor.blue, UIColor.white)
//                case 21 ... 30:
//                    return (UIColor.red, UIColor.white)
//                case 31 ... 40:
//                    return (UIColor.gray, UIColor.white)
//                case 41 ... 45:
//                    return (UIColor.green, UIColor.black)
//                default :
//                    return (UIColor.purple, UIColor.white)
//            }
//        }
//    
    override func viewWillTransition(to size: CGSize, with coordinator: any UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        
        coordinator.animate { _ in
//            self.number1Label.layer.cornerRadius = self.number1Label.bounds.width / 2
//            self.number2Label.layer.cornerRadius = self.number2Label.bounds.width / 2
//            self.number3Label.layer.cornerRadius = self.number3Label.bounds.width / 2
//            self.number4Label.layer.cornerRadius = self.number4Label.bounds.width / 2
//            self.number5Label.layer.cornerRadius = self.number5Label.bounds.width / 2
//            self.number6Label.layer.cornerRadius = self.number6Label.bounds.width / 2
//            self.number7Label.layer.cornerRadius = self.number7Label.bounds.width / 2
            for label in self.labels {
                label.layer.cornerRadius = label.bounds.width / 2 // 원형으로 만들기
                label.clipsToBounds = true // 원형으로 만들기
            }
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
//        
//        let labels = [number1Label!, number2Label!, number3Label!, number4Label!, number5Label!, number6Label!, number7Label!]
// 옵셔널을 배우지 않았기 때문에 !를 붙여야 한다.
//        
//        var nums = [Int]() // 빈 배열을 만든다.
        var nums = Int.uniqueRandomNumbers(in: 1 ... 45, count: 7)
//        while nums.count < 7 {
//        }
//        while nums.count < labels.count {
//            let rnd = Int.random(in: 1 ... 45) // 숫자 랜덤 뽑기
//            if !nums.contains(rnd) { // 랜덤 숫자의 중복을 방지하기 위한 장치
//                nums.append(rnd) // 랜덤으로 뽑힌 숫자값을 nums 변수에 집어넣는 코드
//            }
//        }
//        
//        nums.sort()
        /* 현재 배열을 직접 정렬하니까 정렬한 새로운 배열을 return할 필요가 없다.
                     그래서 return 타입이 없어 return하지 않으므로, 새롭게 정 렬한 배열을 저장할 별도의 상수를 만들 필요가 없다.
                     즉 새로운 배열을 만들지 않고 바로 정렬하니까
                     배열의 크기만큼 메모리를 절약할 수 있다.*/
//        let sortedNums = nums.sorted()
// 오름차순 정렬. 반면 sorted()는 return type이 존재한다. 그러므로 새롭게 정렬한 배열을 return한 것을 저장할 별도의 상수가 필요하다.
//
//        for label in labels {
        for (index, label) in labels.enumerated() { // loopconstant를 2개 설정하는 방법
            if label == labels.last {
                label.setLottoNumber(nums[index], with: .purple, textColor: .white) // UIColor.purple로 해야 하나, 컴퍼일러가 파라미터의 타입을 알고 있으므로 생략이 가능하다.
            } else {
                label.setLottoNumber(nums[index])
            }
        }
//            label.layer.cornerRadius = label.bounds.width / 2 // 원형으로 만들기
//            label.clipsToBounds = true // 원형으로 만들기
//            
//            label.text = "\(nums[index])" // 배열의 값을 불러오기 위해선 인덱스를 사용해야 한다.
////
////            switch sortedNums[index] {
////                case 1 ... 10:
////                    label.backgroundColor = UIColor.yellow // 원형 레이블 색상
////                    label.textColor = UIColor.black // 글자 색상
////                case 11 ... 20:
////                    label.backgroundColor = UIColor.blue
////                    label.textColor = UIColor.white
////                case 21 ... 30:
////                    label.backgroundColor = UIColor.red
////                    label.textColor = UIColor.white
////                case 31 ... 40:
////                    label.backgroundColor = UIColor.gray
////                    label.textColor = UIColor.white
////                case 41 ... 45:
////                    label.backgroundColor = UIColor.green
////                    label.textColor = UIColor.black
////                default :
////                    break
////            }
////            label.backgroundColor = getColors(from: sortedNums[index]).0 // Unnamed Tuple로 이름이 없으므로, index로 접근해야 한다. = return된 값의 첫번째 것을 사용해야 하므로 .0을 사용
////            label.textColor = getColors(from: sortedNums[index]).1
//            // Named Tuple인 경우 (이름과 인덱스를 모두 사용 가능하다.)
////            label.backgroundColor = getColors(from: sortedNums[index]).backgroundColor // 메소드 호출 후 도출된 값 2개 중 하나만 사용하고 나머지는 버린다.
////            label.textColor = getColors(from: sortedNums[index]).textColor // 메소드를 또 호출하는 격
//            let color = getColors(from: nums[index])
//            label.backgroundColor = color.backgroundColor
//            label.textColor = color.textColor
//        }
//        let rnd1 = Int.random(in: 1 ... 45)
//        let rnd2 = Int.random(in: 1 ... 45)
//        let rnd3 = Int.random(in: 1 ... 45)
//        let rnd4 = Int.random(in: 1 ... 45)
//        let rnd5 = Int.random(in: 1 ... 45)
//        let rnd6 = Int.random(in: 1 ... 45)
//        let rnd7 = Int.random(in: 1 ... 45)
//
//        number1Label.text = "\(rnd1)"
//        number2Label.text = "\(rnd2)"
//        number3Label.text = "\(rnd3)"
//        number4Label.text = "\(rnd4)"
//        number5Label.text = "\(rnd5)"
//        number6Label.text = "\(rnd6)"
//        number7Label.text = "\(rnd7)"
//        
//        switch rnd1 {
//            case 1 ... 10:
//                number1Label.backgroundColor = UIColor.yellow
//                number1Label.textColor = UIColor.black
//            case 11 ... 20:
//                number1Label.backgroundColor = UIColor.blue
//                number1Label.textColor = UIColor.white
//            case 21 ... 30:
//                number1Label.backgroundColor = UIColor.red
//                number1Label.textColor = UIColor.white
//            case 31 ... 40:
//                number1Label.backgroundColor = UIColor.gray
//                number1Label.textColor = UIColor.white
//            case 41 ... 45:
//                number1Label.backgroundColor = UIColor.green
//                number1Label.textColor = UIColor.black
//            default :
//                break
//        }
//
//        switch rnd2 {
//            case 1 ... 10:
//                number2Label.backgroundColor = UIColor.yellow
//                number2Label.textColor = UIColor.black
//            case 11 ... 20:
//                number2Label.backgroundColor = UIColor.blue
//                number2Label.textColor = UIColor.white
//            case 21 ... 30:
//                number2Label.backgroundColor = UIColor.red
//                number2Label.textColor = UIColor.white
//            case 31 ... 40:
//                number2Label.backgroundColor = UIColor.gray
//                number2Label.textColor = UIColor.white
//            case 41 ... 45:
//                number2Label.backgroundColor = UIColor.green
//                number2Label.textColor = UIColor.black
//            default :
//                break
//        }
//
//        switch rnd3 {
//            case 1 ... 10:
//                number3Label.backgroundColor = UIColor.yellow
//                number3Label.textColor = UIColor.black
//            case 11 ... 20:
//                number3Label.backgroundColor = UIColor.blue
//                number3Label.textColor = UIColor.white
//            case 21 ... 30:
//                number3Label.backgroundColor = UIColor.red
//                number3Label.textColor = UIColor.white
//            case 31 ... 40:
//                number3Label.backgroundColor = UIColor.gray
//                number3Label.textColor = UIColor.white
//            case 41 ... 45:
//                number3Label.backgroundColor = UIColor.green
//                number3Label.textColor = UIColor.black
//            default :
//                break
//        }
//
//        switch rnd4 {
//            case 1 ... 10:
//                number4Label.backgroundColor = UIColor.yellow
//                number4Label.textColor = UIColor.black
//            case 11 ... 20:
//                number4Label.backgroundColor = UIColor.blue
//                number4Label.textColor = UIColor.white
//            case 21 ... 30:
//                number4Label.backgroundColor = UIColor.red
//                number4Label.textColor = UIColor.white
//            case 31 ... 40:
//                number4Label.backgroundColor = UIColor.gray
//                number4Label.textColor = UIColor.white
//            case 41 ... 45:
//                number4Label.backgroundColor = UIColor.green
//                number4Label.textColor = UIColor.black
//            default :
//                break
//        }
//
//        switch rnd5 {
//            case 1 ... 10:
//                number5Label.backgroundColor = UIColor.yellow
//                number5Label.textColor = UIColor.black
//            case 11 ... 20:
//                number5Label.backgroundColor = UIColor.blue
//                number5Label.textColor = UIColor.white
//            case 21 ... 30:
//                number5Label.backgroundColor = UIColor.red
//                number5Label.textColor = UIColor.white
//            case 31 ... 40:
//                number5Label.backgroundColor = UIColor.gray
//                number5Label.textColor = UIColor.white
//            case 41 ... 45:
//                number5Label.backgroundColor = UIColor.green
//                number5Label.textColor = UIColor.black
//            default :
//                break
//        }
//
//        switch rnd6 {
//            case 1 ... 10:
//                number6Label.backgroundColor = UIColor.yellow
//                number6Label.textColor = UIColor.black
//            case 11 ... 20:
//                number6Label.backgroundColor = UIColor.blue
//                number6Label.textColor = UIColor.white
//            case 21 ... 30:
//                number6Label.backgroundColor = UIColor.red
//                number6Label.textColor = UIColor.white
//            case 31 ... 40:
//                number6Label.backgroundColor = UIColor.gray
//                number6Label.textColor = UIColor.white
//            case 41 ... 45:
//                number6Label.backgroundColor = UIColor.green
//                number6Label.textColor = UIColor.black
//            default :
//                break
//        }
//        
//        number7Label.backgroundColor = UIColor.purple
//        number7Label.textColor = UIColor.white
//
//        let bonusColor = getColors(from: nil) // 이 방식의 경우, 메소드를 한번만 호출하게 된다.
//        number7Label.backgroundColor = bonusColor.backgroundColor
//        number7Label.textColor = bonusColor.textColor
//        number7Label.backgroundColor = getColors(from: nil).backgroundColor // 이 방식은 함수를 2번 호출하게 되므로 바람직하지 않을 수 있다.
//        number7Label.textColor = getColors(from: nil).textColor
//
//        number1Label.layer.cornerRadius = number1Label.bounds.width / 2
//        number1Label.clipsToBounds = true
//
//        number2Label.layer.cornerRadius = number2Label.bounds.width / 2
//        number2Label.clipsToBounds = true
//
//        number3Label.layer.cornerRadius = number3Label.bounds.width / 2
//        number3Label.clipsToBounds = true
//
//        number4Label.layer.cornerRadius = number4Label.bounds.width / 2
//        number4Label.clipsToBounds = true
//
//        number5Label.layer.cornerRadius = number5Label.bounds.width / 2
//        number5Label.clipsToBounds = true
//
//        number6Label.layer.cornerRadius = number6Label.bounds.width / 2
//        number6Label.clipsToBounds = true
//
//        number7Label.layer.cornerRadius = number7Label.bounds.width / 2
//        number7Label.clipsToBounds = true
    }
}

