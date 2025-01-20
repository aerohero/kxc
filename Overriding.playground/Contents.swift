import UIKit

// Overriding, 재정의

class Figure {
    var name = "Unknown"
    
    init(name: String = "Unkown") {
        self.name = name
    }
    
    final func draw() { // 클래스는 상속하도록 하되, 특정 멤버만 overriding 할 수 없도록 할 수 있는데, 이때 final을 멤버 앞에 붙이면 된다.
        // 맴버 앞에 final을 붙이면, overriding이 금지되는 것이지, 상속에서 제외되는 것은 아니다.
        print("draw \(name)")
    }
}

class Circle: Figure { // final을 class 앞에 붙이면, 다른 클래스가 Circle 클래스를 더이상 상속할 수 없도록 한다.
    var radius = 0.0 // 읽고 쓰기가 가능한 속성
    
    var diameter: Double { // 읽기만 가능한 속성
        return radius * 2
    }
    
//    override func draw() {
//        super.draw() // 상위 클래스의 메소드 구현을 위해서는 super를 붙여야 한다.
//        print("draw 🔴")
//    }
}

class Oval: Circle {
//    override var radius = 0.0
    // 속성의 경우, 이렇게 하면 안되고, computed property나 property observor를 추가하는 방식으로 해야 한다.
    // 아래는 computed property로 구현한 예시이다.
    override var radius: Double {
        get {
            return super.radius // 읽기
        }
        set {
            super.radius = newValue // 쓰기
        }
    }
    
    override var diameter: Double {
        get {
            return super.diameter
        }
        set {
            super.radius = newValue / 2
        }
    }
}


let c = Circle(name: "Circle")
c.draw()

let o = Oval(name: "Oval")
o.radius // 맴버 앞에 final을 붙이면, overriding이 금지되는 것이지, 상속에서 제외되는 것은 아니다.
o.draw()

print("=================")

class MyViewController {
    init() {
        viewDidLoad()
    }
    func viewDidLoad() {
        print("Root view가 메모리에 로드되었습니다.")
    }
    func viewWillAppear() {
        print("Root view를 뷰 계층에 추가하기 전입니다.")
    }
    func viewIsAppearing() {
        print("Root view를 뷰 계층에 추가하고 있습니다.")
    }
    func viewDidAppear() {
        print("Root view가 뷰 계층에 추가된 직후입니다.")
    }
    func addViewHierarchy() {
        viewWillAppear()
        print("Root view를 뷰 계층에 추가합니다.")
        viewIsAppearing()
        print("Root view가 뷰 계층에 추가되었습니다.")
        viewDidAppear()
    }
}

class LoginViewController: MyViewController {
    override func viewDidAppear() { // 상위 클래스의 메소드를 재정의하겠다. = override를 붙인 이유
        super.viewDidAppear() // 상위 클래스의 메소드를 호출한다. 이를 위해서는 super를 붙여야 한다.
        
        print("키보드를 표시합니다.")
    }
}

let vc = LoginViewController() // vc라는 인스턴스를 만든다.
vc.addViewHierarchy() // vc 인스턴스는 상위 클래스의 메소드에 접근할 수 있다.
/* DK
 kxc 상위 구현이 먼저 호출된다.
 LoginViewController()는, MyViewController를 상위 클래스로 두고 있으므로,
 먼저 MyViewController가 초기화된다.
 그래서 init 아래의 실행코드인 viewDidLoad()가 실행된다. == print("Root view가 메모리에 로드되었습니다.")
 그후에 addViewHierarchy() 호출에 대한 프로세스가 진행되는데,
 viewWillAppear() == print("Root view를 뷰 계층에 추가하기 전입니다.")
 print("Root view를 뷰 계층에 추가합니다.")
 viewIsAppearing() == print("Root view를 뷰 계층에 추가하고 있습니다.")
 print("Root view가 뷰 계층에 추가되었습니다.")
 viewDidAppear()
 가 차례로 실행되는데,
 마지막의 viewDidAppear()는 그대로 실행되지 않고,
 vc가 LoginViewController() 인스턴스이므로
 override로 재정의된 viewDidAppear()가 실행되어야 한다.
 재정의된 viewDidAppear()의 내용은,
 viewDidAppear()
 print("키보드를 표시합니다.")
 를 차례로 실행하는 것이고,
 그러므로
 viewDidAppear() == print("Root view가 뷰 계층에 추가된 직후입니다.")
 print("키보드를 표시합니다.")
 가 차례로 실행된다.
 */

