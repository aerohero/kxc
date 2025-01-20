//
//  AddViewController.swift
//  JustToDo2
//
//  Created by Sean on 1/8/25.
//

import UIKit

//let toDoKey = "todo" // 전역 상수는 바람직하지 않으므로, 가급적이면 피한다. 가독성을 해친다.
enum Key {
    case todo
}

class AddViewController: UIViewController {
//    
//    weak var delegate: ToDoDelegate?
//    
    @IBOutlet weak var inputField: UITextField!
    
    @IBAction func cancel(_ sender: Any) {
//        delegate?.addViewControllerDidCancel?(self)
        dismiss(animated: true)
    }
    
    @IBAction func save(_ sender: Any) {
        guard let text = inputField.text else {
            return
        }
// Notification, Local Notification, Remote Notification 3종 중 첫번째 것 사용한다.
        let center = NotificationCenter.default
        center.post(name: .toDoDidInsert, object: nil, userInfo: [Key.todo: text])
        
//        delegate?.addViewController(self, didInsert: text)
        dismiss(animated: true)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
