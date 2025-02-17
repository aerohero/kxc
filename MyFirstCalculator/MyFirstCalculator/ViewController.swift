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
    
    func showAlert(message: String, title: String = "알림") {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "확인", style: .default)
        alert.addAction(okAction)
        
        present(alert, animated: true)
    }
    
    @IBAction func selectOperator(_ sender: Any) {
        
        let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        let plusAction = UIAlertAction(title: "+ (더하기)", style: .default) { _ in
            self.operatorButton.setTitle("+", for: .normal)
            self.selectedOperator = .plus
        }

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
    }
    
    @IBOutlet weak var operatorButton: UIButton!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func calculate(_ sender: Any) {

        guard let text = firstOperandField.text, let a = Int(text) else {
            firstOperandField.becomeFirstResponder()
            showAlert(message: "숫자를 입력하세요!", title: "오류")
            return
        }
        
        guard let text = secondOperandField.text, let b = Int(text) else {
            secondOperandField.becomeFirstResponder()
            showAlert(message: "숫자를 입력하세요!")
            return
        }
        
        guard let op = selectedOperator else {
            showAlert(message: "연산자를 선택해 주세요!")
            return
        }
       
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
        
        firstOperandField.delegate = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        firstOperandField.becomeFirstResponder()
    }

}

extension ViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        guard !string.isEmpty else { return true }
        
        guard let _ = Int(string) else { return false }
        
        return true
    }
}
