//
//  ViewController.swift
//  MyFirstAnimation
//
//  Created by Sean on 12/3/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var boxView: UIView!
    
    @IBAction func moveBox(_ sender: Any) {
        
//        UIView.animate(
//            withDuration: 5, // duration은 보통 0.3초로 설정한다.
//            animations: { () -> () in // 클로저. 파라미터와 리턴 타입이 없는
//                self.boxView.frame = CGRect(x: 200, y: 400, width: 200, height: 200)
//                self.boxView.backgroundColor = UIColor.yellow
//            },
//            completion: { _ in
// 클로저. 파라미터 없이. 원칙적 문법대로 작성하면, completion: { (finished: Bool) -> Void in
// 문법 최적화를 위해 파라미터 타입과 리턴 타입을 생략할 순 있으나
//        body에서 파라미터를 사용하고 있지 않으므로, 이를 선언해줘야 해서 언더스코어를 붙여야 한다. 생략은 언더스코어, 언더스코어는 와이드카드 패턴
//                print("Animation Completed") // 로그만 출력
//            })
//        UIView.animate(
//            withDuration: 5, animations: {
//                self.boxView.frame = CGRect(x: 200, y: 400, width: 200, height: 200)
//                self.boxView.backgroundColor = UIColor.yellow
//            } ) { _ in
//                print("Animation Completed")
//            }
        UIView.animate(
            withDuration: 5) {
                self.boxView.frame = CGRect(x: 200, y: 400, width: 200, height: 200)
                self.boxView.backgroundColor = UIColor.yellow
            } completion: { _ in
                print("Animation Completed")
            }
// Multiple Trailing Closure
// swift 5.3부터 trailing closure가 2개 이상이더라도 괄호 밖으로 뺄 수 있다. 다만 복수의 클로저를 구분하기 위해 Argument Label을 명시적으로 써줘야 한다.
// 다만 2개 이상의 trailing closure를 괄호 밖으로 빼기 위해선, 2개의 파라미터가 모두 클로저여야 하지, 만약 하나의 파라미터가 Int 등과 같이 타입이 다르면, 괄호 밖으로 뺄 수 없고, 원칙대로 inline closure로 작성해야 한다.
//        UIView.animate(withDuration: 0.3) {
//            <#code#>
//        } completion: { <#Bool#> in
//            <#code#>
//        }

        
    }
    
    
    
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

