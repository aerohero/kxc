//
//  ViewController.swift
//  ScreenToView2
//
//  Created by Sean on 1/19/25.
//

import UIKit

class FirstViewController: UIViewController {
    
//    override func viewDidLoad() {
//        /* 여기에서 view는 Root view를 의미한다.
//         생성자(init) > Root view가 메모리에 저장된다. > viewDidLoad 함수 호출 > 초기화에 필요한 코드들 실행
//         Root view가 메모리에 저장(로드)된 다음에 호출된다.
//         view controller의 lifecycle 동안에 딱 한번만 호출된다.
//         그래서 앱 실행시 한번만 실행하면 되는 코드들,
//         일반적으로 초기화 코드들을 보통 여기에서 실행하게 한다.
//         root view는 생성자(init)가 만들어진 다음에 만들어진다. */
//        super.viewDidLoad()
//        /* override 할 때, super 대신 self를 사용한다면
//         재귀호출이 되어 무한반복되다가 에러를 발생시킨다.
//         override를 할 때, self를 사용하지 않도록 주의가 필요하다. */
//        print(self, #function, presentingViewController, presentedViewController)
//        //        print(UIScreen.main.bounds) // 스크린의 크기를 얻을 수 있다.
//        //        print(view.window?.windowScene?.screen.bounds)
//    }
//    override func viewWillAppear(_ animated: Bool) {
//        /* root view가 계층에 추가되기 직전에 실행된다.
//         화면이 표시되기 전에 tableview를 최신 데이터로 업데이트 하고 싶다면
//         여기서 구현하면 된다. */
//        super.viewWillAppear(animated)
//        print(self, #function, presentingViewController, presentedViewController)
//    }
//    override func viewIsAppearing(_ animated: Bool) {
//        /* root view가 계층에 추가된 직후에 실행된다.
//         여기에서는 보통 뷰의 배치를 바꾸는 코드를 구현한다.
//         보통 오토레이아웃을 사용하여 자동으로 바뀌도록 하기 때문에 추가로 구현하는 일은 드물다. */
//        super.viewIsAppearing(animated)
//        print(self, #function, presentingViewController, presentedViewController)
//    }
//    override func viewDidAppear(_ animated: Bool) {
//        /* root view가 계층에 추가되고 화면에 표시된 다음에 호출된다. */
//        super.viewDidAppear(animated)
//        print(self, #function, presentingViewController, presentedViewController)
//        //        print(UIScreen.main.bounds) // 스크린의 크기를 얻을 수 있다.
//        //        print(view.window?.windowScene?.screen.bounds)
//        //
//        //        if let screen = view.window?.windowScene?.screen {
//        //            let width = screen.bounds.size.width * screen.scale
//        //            let height = screen.bounds.size.height * screen.scale
//        //        }
//    }
//    override func viewWillDisappear(_ animated: Bool) {
//        /* root view가 계층에서 제거되기 직전에 호출된다. */
//        super.viewWillDisappear(animated)
//        print(self, #function, presentingViewController, presentedViewController)
//    }
//    override func viewDidDisappear(_ animated: Bool) {
//        /* root view가 계층에서 제거된 다음에 호출된다. */
//        super.viewDidDisappear(animated)
//        print(self, #function, presentingViewController, presentedViewController)
//    }
//    // Deinitializer, 소멸자
//    // 소멸자는 인스턴스가 메모리에서 사라지기 전에 호출된다.
//    deinit {
//        print(self, #function, presentingViewController, presentedViewController)
//    }
}

