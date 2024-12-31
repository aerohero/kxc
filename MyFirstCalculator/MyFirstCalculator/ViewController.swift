//
//  ViewController.swift
//  MyFirstCalculator
//
//  Created by Sean on 11/24/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstOperandField: UITextField!
    
    @IBOutlet weak var secondOperandField: UITextField!
    
    var selectedOperator: Operator?
    
    @IBAction func selectOperator(_ sender: Any) {
        
        /* func을 선언했지만, {} 안에 있으므로 글로벌 스코프가 아니다.
        클래스는 타입으로 분류하는데,
         타입 안에 있는 함수는, Method라고 부른다.
         따라서 위에 선언한 selectOperator는 함수가 아니라, Method다. */
        
        let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        let plusAction = UIAlertAction(title: "+ (더하기)", style: .default) { _ in // 컴파일러가 인식할 수 있기 때문에 파라미터의 타입과 return 타입을 생략할 수 있다.
            self.operatorButton.setTitle("+", for: .normal)
            self.selectedOperator = .plus
            
        }
// 필요없는 것을 생략해 문법 최적화를 통해 간단하게 하는 것을 swift는 권장한다.
//        문법 원칙대로 코딩하면 아래와 같다.
//        let action = UIAlertAction(title: "+ (더하기)", style: .default, handler: { (action: UIAlertAction) -> Void in
//            self.operatorButton.setTitle("+", for: .normal)
//        })
//
//        let acti on = UIAlertAction(title: "+ (더하기)", style: .default) { _ in self.operatorButton.setTitle("+", for: .normal) }
// body code에서 파라미터 action을 사용하지 않고 있기 때문에 파라미터 action과 in 키워드를 생략하면 에러가 발생한다. 에러가 발생하는 이유는, 파라미터의 타입과 우리가 전달하는 클로저의 타입이 다르기 때문이다. 만약 (action) in을 생략한다고 하면, 결국 파라미터가 없는 클로저를 전달하는 것이 되기 때문에 에러가 발생한다. 2개의 타입이 다르다는 문제도 있다.
// body에서 parameter를 사용하지 않는다면, 파라미터를 완전히 생략할 수 없고, 언더스코어 문자로 파라미터를 생략하고 in 키워드는 남겨둬야 한다. 왜냐면 언더스코어 문자와 code를 구분해야 하니까.
// 언더스코어 문자는 와일드카드 패턴, 와일드카드 패턴은 생략을 기억하자.
// 이렇게 하면 컴파일러는 언더스코어 문자의 개수로 파라미터가 몇개인지 추론할 수 있다. 그리고 이것을 사용하지 않는다는 것도 파악할 수 있다.
// inline closure를 밖으로 빼서 trailing closure로 수정할 수 있다.
//        
        actionSheet.addAction(plusAction)
        
        let minusAction = UIAlertAction(title: "- (뻬기)", style: .default) { _ in
            self.operatorButton.setTitle("-", for: .normal)
            self.selectedOperator = .minus
        }
        
        actionSheet.addAction(minusAction)
        
        let multiplyAction = UIAlertAction(title: "* (곱하기)", style: .default) { _ in
            self.operatorButton.setTitle("*", for: .normal)
            self.selectedOperator = .multiply
        }
        
        actionSheet.addAction(multiplyAction)
        
        let divideAction = UIAlertAction(title: "/ (나누기)", style: .default) { _ in
            self.operatorButton.setTitle("/", for: .normal)
            self.selectedOperator = .divide
        }
        
        actionSheet.addAction(divideAction)
        
        present(actionSheet, animated: true) // 함수를 호출했다.
        // 함수 호출하는데, 파라미터가 2개다.
        // 그런데 첫번째 파라미터는 Argument Label이 생략되어 있고,
        // 두번째 파라미터의 Argument Label은 animated이다.
        // 그런데 true로 되어 있으므로, 타입이 Bool로 선언되어 있음을 알 수 있다.
    }
    
    @IBOutlet weak var operatorButton: UIButton!
    
    @IBOutlet weak var resultLabel: UILabel!
//        
//    func showAlert(message: String) { // "숫자를 입력하세요!" "연산자를 선택해 주세요!"
//        let alert = UIAlertController(title: "알림", message: message, preferredStyle: .alert)
//        
//        let okAction = UIAlertAction(title: "확인", style: .default) // 마지막 파라미터가 없는 것이 아니고 생략한 것이다. 마지막 파라미터가 기본값을 가지고 있기 때문에. 경고창이나 액션시트에 있는 버튼은, 닫는 기능은 기본적으로 제공한다.
//        alert.addAction(okAction)
//        
//        present(alert, animated: true)
//    }
//    
    func showAlert(message: String, title: String = "알림") { // "숫자를 입력하세요!" "연산자를 선택해 주세요!"
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "확인", style: .default) // 마지막 파라미터가 없는 것이 아니고 생략한 것이다. 마지막 파라미터가 기본값을 가지고 있기 때문에. 경고창이나 액션시트에 있는 버튼은, 닫는 기능은 기본적으로 제공한다.
        alert.addAction(okAction)
        
        present(alert, animated: true)
    }
    
    @IBAction func calculate(_ sender: Any) {
//        
//        let a = Int(firstOperandField.text!)!
//        let b = Int(secondOperandField.text!)!
//        let op = operatorButton.title(for: .normal)!
//
//        if let text = firstOperandField.text, let a = Int(text) {
//            if let text = secondOperandField.text, let b = Int(text) {
//                if let op = operatorButton.title(for: .normal) {
//                    
//                    if op == "+" {
//                        
//                        let result = a + b
//                        resultLabel.text = "\(result)" // string interpolation
//                    } else if op == "-" {
//                        
//                        let result = a - b
//                        resultLabel.text = "\(result)"
//                    } else if op == "*" {
//                        
//                        let result = a * b
//                        resultLabel.text = "\(result)"
//                    } else if op == "/" {
//                        
//                        let result = a / b
//                        resultLabel.text = "\(result)"
//                    } else {
//                        print("연산자를 선택하세요!")
//                    }
//                }
//            }
//        }
//        
//        if let text = firstOperandField.text, let a = Int(text), let text = secondOperandField.text, let b = Int(text), let op = operatorButton.title(for: .normal) {
//            if op == "+" {
//                
//                let result = a + b
//                resultLabel.text = "\(result)" // string interpolation
//            } else if op == "-" {
//                
//                let result = a - b
//                resultLabel.text = "\(result)"
//            } else if op == "*" {
//                
//                let result = a * b
//                resultLabel.text = "\(result)"
//            } else if op == "/" {
//                
//                let result = a / b
//                resultLabel.text = "\(result)"
//            } else {
//                print("연산자를 선택하세요!")
//            }
//        }
//
        guard let text = firstOperandField.text, let a = Int(text) else { // 옵셔널 통해 nil 문제 해결
            firstOperandField.becomeFirstResponder()
            showAlert(message: "숫자를 입력하세요!", title: "오류") // 함수 선언과 호출을 통해 반복되는 코드를 한줄로 해결
            return
        }
        
        guard let text = secondOperandField.text, let b = Int(text) else {
            secondOperandField.becomeFirstResponder()
            showAlert(message: "숫자를 입력하세요!")
            return
        }
        
//        guard let op = operatorButton.title(for: .normal), op != "?" else {
        guard let op = selectedOperator else {
            showAlert(message: "연산자를 선택해 주세요!")
            return
        }
//        
//        if op == "?" {
//            
//            let alert = UIAlertController(title: "알림", message: "연산자를 선택해 주세요!", preferredStyle: .alert)
//            let okAction = UIAlertAction(title: "확인", style: .default)
//            alert.addAction(okAction)
//            present(alert, animated: true)
//            
//        }
//
//        if op == "+" {
//            
//            let result = a + b
//            resultLabel.text = "\(result)" // string interpolation
//        } else if op == "-" {
//            
//            let result = a - b
//            resultLabel.text = "\(result)"
//        } else if op == "*" {
//            
//            let result = a * b
//            resultLabel.text = "\(result)"
//        } else if op == "/" {
//            
//            let result = a / b
//            resultLabel.text = "\(result)"
//        } else {
//            print("연산자를 선택하세요!")
//        }
//        
        var result: Int? = nil
        
        switch op {
        case .plus:
            result = a + b
        case .minus:
            result = a - b
        case .multiply:
            result = a * b
        case .divide:
            result = a / b
//        default:
//            break
//            print("연산자를 선택하세요!")
        }
        
        guard let result else {
            return
        }
        
        resultLabel.text = "\(result)"
        
        if firstOperandField.isFirstResponder {
            firstOperandField.resignFirstResponder()
        }
        if secondOperandField.isFirstResponder {
            secondOperandField.resignFirstResponder()
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        firstOperandField.becomeFirstResponder()
    }

}

