//
//  ViewController.swift
//  MyFirstLogin
//
//  Created by Sean on 11/24/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var idField: UITextField!
    
    /*
    !Boolean_expr
    Optional_expr
    Type! = IUO = Implicitly Unwrapped Optional
    자동으로 추출되는 옵셔널
    위 코드 한줄을 이해하기 위해선
     클래스와 인스턴스를 알아야 한다.
     인스턴스가 어떻게 만들어지고,
     메모리에 언제 저장되는지,
     그리고 옵셔널체인이라고 하는 새로운 문법도 알아야 한다.
     당장은 위의 UITextField!은,
     IUO라는 특별한 타입이고,
     넌옵셔널 타입으로 자동으로 언랩핑된다.정도로만 알고 가자.
     nil이 저장되어 있으면 크래쉬가 발생하니까
     가급적이면 사용하지 말자.
     */
    
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    func showAlert(message: String) {
        
        let alert = UIAlertController(title: "알림", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "확인", style: .default)
        alert.addAction(okAction) // aler에 액션 추가하기
        present(alert, animated: true) // 화면에 표시하기
    }
    
    @IBAction func login(_ sender: Any) { // 함수가 아니고 Method. (Argument Label) 생략은 언더스코어, 언더스코어는 Wildcard Pattern.
        
        guard let id = idField.text, !id.isEmpty else {
            showAlert(message: "아이디를 입력하세요.")
            return
        }
        
        guard let password = passwordField.text, !password.isEmpty else {
            showAlert(message: "비밀번호를 입력하세요.")
            return
        }
        
//        let id = idField.text! // 뒤에 붙은 ! = forced unwrapping = optional에서 값을 강제추출하는 것을 의미한다.
//        let password = passwordField.text!
//        
//         id = kxcoding
//         pw = 1234
//        
//        if id == "kxcoding"{
//        
//            if password == "1234" {
//                
//                resultLable.text = "로그인 성공"
//                
//            } else {
//                
//                resultLable.text = "로그인 실패"
//            }
//            
//        } else {
//            
//            resultLable.text = "로그인 실패"
//        }
//
//        if id == "kxcoding" && password == "1234" {
//            
//            resultLable.text = "로그인 성공"
//            
//        } else {
//            resultLable.text = "로그인 실패"
//        }
//        
//         로그인 정보를 입력했는지 여부를 먼저 확인할 필요가 있다.
//         입력값의 길이를 확인하면 된다.
//         입력값이 0보다 크면 된다.
//        
//         id.count == 0 // 입력값을 아무것도 넣지 않은 경우에 해당한다.
//         id.isEmpty // 위의 코드와 동일한 내용의 코드에 해당한다.
//        
//        if id.isEmpty || password.isEmpty {
//            print("ID 및 PW를 입력하세요") // 경고창 표시
//            resultLable.text = "ID 및 PW를 입력하세요"
//            return
//        
//             코드를 끝낸다.
//             if가 참이면, 실행 후 다음 코드를 실행하지 않고 끝낸다.
//             즉 조건을 충족하지 않으면, 실행하지 않고 코드를 끝냄으로써 문제를 발생시키지 않는 방법이다.
//             early exit pattern
//        }
//        
//         guard condition else {
//         statements
//         }
//
//         guard optionalBinding else {
//         statements
//         }
//        
//         guard문은 if문 사용시 발생할 수 있는 중첩 문제를 해결할 수 있다.
//        
//        guard id.isEmpty || password.isEmpty else {
//            resultLable.text = id == "kxcoding" && password == "1234" ? "로그인 성공" : "로그인 실패"
//            return
//        }
//            
//        resultLable.text = "ID 및 PW를 입력하세요"
//        
//        
// condition ? expr2 : expr2
//         
//        resultLable.text = id == "kxcoding" && password == "1234" ? "로그인 성공" : "로그인 실패"
//        
//        guard id.isEmpty && password.isEmpty else {
//            showAlert(message: "ID와 PW를 입력하세요.")
//            return
//        }
        
        resultLabel.text = id == "aerohero" && password == "1234" ? "로그인 성공" : "로그인 실패"
        
    }
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) { // 화면이 뜨면 자동으로 바로 키보드 화면이 뜨도록 하는 등의 기능을 하도록 하는 메소드에 해당
        super.viewDidAppear(animated)
        
        idField.becomeFirstResponder() // 키보드를 표시하도록 하는 메소드. 시뮬레이터 상에서는 커서만 바로 입력창에 나타나고 키보드는 표시되지 않는데, 실제 구동상에서는 키보드까지 표시된다고 보면 된다. 이유는 하드웨어 키보드가 연결되어 있기 때문에.
    }

}


extension ViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
//        print(#function, textField.text, string)
//        textField에 무언가가 입력되거나 삭제될 때마다 호출된다.

        var finalId = idField.text ?? ""
        var finalPassword = passwordField.text ?? ""
        
        if textField == idField {
            guard let range = Range(range, in: finalId) else {
                return true
            }
            finalId = finalId.replacingCharacters(in: range, with: string)
        } else if textField == passwordField {
            guard let range = Range(range, in: finalPassword) else {
                return true
            }
            finalPassword = finalPassword.replacingCharacters(in: range, with: string)
        }
        
        guard let text = textField.text, let range = Range(range, in: text) else {
            return true
        }
        
        let finalText = text.replacingCharacters(in: range, with: string)
//        print(finalText)
        
        loginButton.isEnabled = !finalId.isEmpty && !finalPassword.isEmpty
        
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField == idField {
            let cnt = textField.text?.count ?? 0
            let isValidId = (6 ... 12).contains(cnt)
            
            textField.layer.borderWidth = isValidId ? 0 : 1
            textField.layer.borderColor = isValidId ? nil : UIColor.red.cgColor
            textField.layer.cornerRadius = isValidId ? 0 : 5
            textField.tintColor = isValidId ? view.tintColor : .red
            
            return isValidId
        }
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(#function, textField)
              
        switch textField {
            case idField: passwordField.becomeFirstResponder()
            case passwordField: login(self)
            default: break
        }
        return false
    }
}









