import UIKit

// 추상화 = 앱을 만드는데 필요한 정보만 골라내는 작업을 의미
// 이름, 별명, 생일, 성별, 사는 곳, 키, 몸무게, 성격, 휴대폰 번호
//
// 추상화가 끝나면, 타입을 만들 차례다.
// 타입은 구조체, 클래스, 열거형 3가지가 있다.
// 복사본 대신 주소를 전달해야 한다거나, 상속이 필요하다면, 클래스를 선택해야 한다.
//
// Lecture 강의, Cource 강좌 (여러 강의로 이루어진)

extension Double {
    static let reviewScoreFormatter = {
        let formatter = NumberFormatter()
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 1
        return formatter
    }()
    var reviewScoreString: String? {
        return Self.reviewScoreFormatter.string(for: self)
    }
    static let priceFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale(identifier: "Ko_kr")
        return formatter
    }()
    var priceString: String? {
        return Self.priceFormatter.string(for: self)
    }
}

extension String {
    var url: URL? {
        URL(string: self)
    }
}

class Service {
    let title: String
    let subtitle: String
//    let cardimageUrlStr: String
    let cardimageUrl: String
//    var cardImageUrl: URL? {
//        URL(string: cardimageUrlStr)
//    }
//    let thumbnailImageUrlStr: String?
    let thumbnailImageUrl: String?
//    var thumbnailImageUrl: URL? {
//        guard let str = thumbnailImageUrlStr else { return nil }
//        return URL(string: str)
//    }
//    static let reviewScoreFormatter = {
//        let formatter = NumberFormatter()
//        formatter.minimumFractionDigits = 0
//        formatter.maximumFractionDigits = 1
//        return formatter
//    }()
    let reviewScore: Double?
//    var reviewScoreStr: String? {
//        guard let score = reviewScore else { return nil }
//        return Self.reviewScoreFormatter.string(for: score)
//    }
//    
    let isCertificationAvailable: Bool
    
    init(title: String, subtitle: String, cardimageUrlStr: String, thumbnailImageUrlStr: String?, reviewScore: Double?, isCertificationAvailable: Bool) {
        self.title = title
        self.subtitle = subtitle
        self.cardimageUrl = cardimageUrlStr
        self.thumbnailImageUrl = thumbnailImageUrlStr
        self.reviewScore = reviewScore
        self.isCertificationAvailable = isCertificationAvailable
    }
}

let s = Service(title: "Mastering iOS", subtitle: "", cardimageUrlStr: "", thumbnailImageUrlStr: "", reviewScore: 5.0, isCertificationAvailable: true)

s.reviewScore?.reviewScoreString
s.cardimageUrl.url
s.thumbnailImageUrl?.url

extension Int {
    static let durationFormatter = {
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.hour, .minute]
        formatter.unitsStyle = .full
        return formatter
    }()
    var durationString: String? {
        return Self.durationFormatter.string(from: TimeInterval(self))
    }
}

//struct Course {
class Course: Service {
    let courseId: Int
//    let title: String // stored property (상수 저장) 속성
//    // 메모리에 저장되므로
//    // 메모리에 저장되는 속성
//    // 속성이 메모리에 저장되는 위치는 인스턴스마다 달라진다.
//    // 인스턴스 속성
//    let subtitle: String
//    let cardimageUrlStr: String
////    let cardimageUrl: URL
////    계산 속성. Computed Property
//    var cardImageUrl: URL? {
////        get {
////            return URL(string: cardimageUrlStr)
////        }
////        set {
////        }
//        URL(string: cardimageUrlStr)
//// set block 없이 get block만 있는 경우를 읽기 전용 계산 속성이라 한다.
//// read-only computed property
//// braces와 return 생략 가능하다.
//    }
//    let thumbnailImageUrlStr: String?
//    var thumbnailImageUrl: URL? {
//        guard let str = thumbnailImageUrlStr else { return nil }
//        return URL(string: str)
//    }
////    let reviewScoreFormatter = {
////        let formatter = NumberFormatter()
////        formatter.minimumFractionDigits = 0
////        formatter.maximumFractionDigits = 1
////        return formatter
////    }() // 클로저를 호출하는 방법?
////
//// type Property 타입속성. 형식속성.
//    static let reviewScoreFormatter = {
//        let formatter = NumberFormatter()
//        formatter.minimumFractionDigits = 0
//        formatter.maximumFractionDigits = 1
//        return formatter
//    }()
////
////    init() {
////        formatter.minimumFractionDigits = 0
////        formatter.maximumFractionDigits = 1
////    }
////    
//    let reviewScore: Double?
//    var reviewScoreStr: String? {
//        guard let score = reviewScore else { return nil }
////        let formatter = NumberFormatter()
////        formatter.minimumFractionDigits = 0
////        formatter.maximumFractionDigits = 1
////        return Course.reviewScoreFormatter.string(for: score)
//        return Self.reviewScoreFormatter.string(for: score)
//    }
//    
//    let isCertificationAvailable: Bool
    var isFree: Bool {
        return price == nil
    }
// 아래 price가 선언되어 있으므로
//    
//    static let durationFormatter = {
//        let formatter = DateComponentsFormatter()
//        formatter.allowedUnits = [.hour, .minute]
//        formatter.unitsStyle = .full
//        return formatter
//    }()
//    
    let lectureCount: Int
    let totalDuration: Int
//    var totalDurationStr: String? {
//        let formatter = DateComponentsFormatter()
//        formatter.allowedUnits = [.hour, .minute]
//        formatter.unitsStyle = .full
//        return Self.durationFormatter.string(from: TimeInterval(totalDuration))
//    }
//    let order: Int
    let priority: Int
    let isPublic: Bool
    let period: Int?
// 기간은 일단위로 하는 것이 좋다.
// nil이면 무제한 수강, nil이 아니면 30일, 6개월, 1년
    let price: Double?
// 가격은 외국의 경우 소수점도 사용하므로
// 무료강의는 0원으로 nil로 리턴하도록 옵셔널로 선언
    let discountedPrice: Double?
//    
//    static let priceFormatter = {
//        let formatter = NumberFormatter()
//        formatter.numberStyle = .currency
//        formatter.locale = Locale(identifier: "Ko_kr")
//        return formatter
//    }()
//    
    var priceString: String? {
        guard let price else { return "Free" }
//        let formatter = NumberFormatter()
//        formatter.numberStyle = .currency
//        formatter.locale = Locale(identifier: "Ko_kr")
        if let discountedPrice {
//            return Self.priceFormatter.string(for: discountedPrice)
            return discountedPrice.priceString
        }
//        return Self.priceFormatter.string(for: price)
        return price.priceString
    }
//    
    init(title: String, subtitle: String, cardimageUrlStr: String, thumbnailImageUrlStr: String?, reviewScore: Double?, isCertificationAvailable: Bool, courseId: Int, lectureCount: Int, totalDuration: Int, priority: Int, isPublic: Bool, period: Int?, price: Double?, discountedPrice: Double?) {
        self.courseId = courseId
        self.lectureCount = lectureCount
        self.totalDuration = totalDuration
        self.priority = priority
        self.isPublic = isPublic
        self.period = period
        self.price = price
        self.discountedPrice = discountedPrice
        
        super.init(title: title, subtitle: subtitle, cardimageUrlStr: cardimageUrlStr, thumbnailImageUrlStr: thumbnailImageUrlStr, reviewScore: reviewScore, isCertificationAvailable: isCertificationAvailable)
    }
}
//
//let ios = Course(title: "Mastering iOS")
//let swift = Course(title: "Mastering Swift")
//
//let formatter = NumberFormatter()
//formatter.minimumFractionDigits = 0
//formatter.maximumFractionDigits = 1
//
//formatter.string(for: 4.234567)
//formatter.string(for: 4.0)
//
//let formatter = DateComponentsFormatter()
//formatter.allowedUnits = [.hour, .minute]
//formatter.unitsStyle = .full
//
//formatter.string(from: TimeInterval(7000))
//
//struct Camp {
extension Date {
    static let formatter: DateFormatter()
    func format(with format: String, locale: Locale = Locale(identifier: "ko-kr")) -> String? {
        Self.formatter.dateFormat = format
        Self.formatter.locale = locale
        return Self.formatter.string(from: self)
    }
}

class Camp: Service {
    let campId: Int
//    let title: String
//    let subtitle: String
//    let cardimageUrlStr: String
//    var cardImageUrl: URL? {
//        URL(string: cardimageUrlStr)
//    }
//    let thumbnailImageUrlStr: String?
//    var thumbnailImageUrl: URL? {
//        guard let str = thumbnailImageUrlStr else { return nil }
//        return URL(string: str)
//    }
//    let reviewScore: Double?
//    var reviewScoreStr: String? {
//        guard let score = reviewScore else { return nil }
//        let formatter = NumberFormatter()
//        formatter.minimumFractionDigits = 0
//        formatter.maximumFractionDigits = 1
//        
//        return formatter.string(for: score)
//    }
//    let isCertificationAvailable: Bool
//    
    let startDate: Date
//    var startDateString: String? {
//        let formatter = DateFormatter()
////        formatter.dateStyle = .full
////        formatter.timeStyle = .none
//        formatter.dateFormat = "M월 d일 개강"
//        formatter.locale = Locale(identifier: "ko_KR")
//        return formatter.string(from: startDate)
//    }
    let endDate: Date
//    var endDateString: String? {
//        let formatter = DateFormatter()
////        formatter.dateStyle = .full
////        formatter.timeStyle = .none
//        formatter.dateFormat = "M월 d일 종료"
//        formatter.locale = Locale(identifier: "ko_KR")
//        return formatter.string(from: endDate)
//    }
// 코드가 중복되므로 extention 공부 후 개선할 예정
    let isOnlineCamp: Bool
    let locationUrl: URL? // 오프라인 뿐만 아니라 온라인 줌 url, 개더타운 url 등도 필요할 수 있으므로, mapUrl 보다는 현재 이름을 추천 (중립적 개념으로 볼 수 있으므로)
// 좌표
    let latitude: Double?
    let longitude: Double?
// 상태 5가지
//    개강 준비중
//    모집중
//    모집마감
//    개강중
//    종강
// Nested Type 다른 타입 안에 포함된 타입
// 중복되는 이름을 삭제한다.
// 타입 밖에서 접근할 때는 Camp.Status.ended를 사용해야 한다.
    enum Status: String { // raw value 사용
        case preparingForOpening    = "개강준비중"
        case recruiting             = "모집중"
        case recruitingEnded        = "모집마감"
        case onGoing                = "개장중"
        case ended                  = "종강"
    }
    
    let status: Status
    let generation: Int //  term, iteration, generation
    var statusString: String? {
        return "\(generation)기 \(status.rawValue)"
//        switch status { // CampStatus 열거형 타입이므로 switch가 적합
//            case .preparingForOpening:
//                return "\(generation)기수 개강준비중"
//            case .recruiting:
//                return "\(generation)기수 모집중"
//            case .recruitingEnded:
//                return "\(generation)기수 모집마감"
//            case .onGoing:
//                return "\(generation)기수 개강중"
//            case .ended:
//                return "\(generation)기수 종강"
//            }
    }
    let priority: Int
    let isPublic: Bool
//    let period: Int?
    let price: Double?
    let discountedPrice: Double?
    var priceString: String? {
        guard let price else { return "Free" }
//        let formatter = NumberFormatter()
//        formatter.numberStyle = .currency
//        formatter.locale = Locale(identifier: "Ko_kr")
        if let discountedPrice {
//            return formatter.string(for: discountedPrice)
            return discountedPrice.priceString
        }
//        return formatter.string(for: price)
        return price.priceString
    }
// Designated initializer 지정 생성자
    init(title: String, subtitle: String, cardimageUrlStr: String, thumbnailImageUrlStr: String? = nil, reviewScore: Double? = nil, isCertificationAvailable: Bool = true, campId: Int, startDate: Date, endDate: Date, isOnlineCamp: Bool = true, locationUrl: URL? = nil, latitude: Double? = nil, longitude: Double? = nil, status: Status = .preparingForOpening, generation: Int, priority: Int, isPublic: Bool, /*period: Int?,*/ price: Double?, discountedPrice: Double? = nil) {
        self.campId = campId
        self.startDate = startDate
        self.endDate = endDate
        self.isOnlineCamp = isOnlineCamp
        self.locationUrl = locationUrl
        self.latitude = latitude
        self.longitude = longitude
        self.status = status
        self.generation = generation
        self.priority = priority
        self.isPublic = isPublic
//        self.period = period
        self.price = price
        self.discountedPrice = discountedPrice
// Delegate Up
        super.init(title: title, subtitle: subtitle, cardimageUrlStr: cardimageUrlStr, thumbnailImageUrlStr: thumbnailImageUrlStr, reviewScore: reviewScore, isCertificationAvailable: isCertificationAvailable)
    }
}
//
//Camp(title: <#T##String#>, subtitle: <#T##String#>, cardimageUrlStr: <#T##String#>, thumbnailImageUrlStr: <#T##String?#>, reviewScore: <#T##Double?#>, isCertificationAvailable: <#T##Bool#>, campId: <#T##Int#>, startDate: <#T##Date#>, endDate: <#T##Date#>, isOnlineCamp: <#T##Bool#>, locationUrl: <#T##URL?#>, latitude: <#T##Double?#>, longitude: <#T##Double?#>, status: <#T##Camp.Status#>, generation: <#T##Int#>, priority: <#T##Int#>, isPublic: <#T##Bool#>, period: <#T##Int?#>, price: <#T##Double?#>, discountedPrice: <#T##Double?#>)
//
////let formatter = DateFormatter()
////formatter.dateFormat = "M월 d일 개강"
////formatter.locale = Locale(identifier: "ko_KR")
////formatter.string(from: .now)
//
//// raw value 원시값
//enum Alignment: Int {
//    case left // 원시값을 저장하지 않으면, 숫자타입의 경우, 0부터 1씩 자동으로 저장된다.
//    case right
//    case center
//}
//
//Alignment.left.rawValue
//Alignment.right.rawValue
//Alignment.center.rawValue
//
//enum Weekday: String {
//    case Sunday
//    case Monday
//    case Tuesday
//    case Wednesday
//    case Thursday
//    case Friday
//    case Saturday
//}
//
////struct Person {
////    let name: String
////}
////struct Person {
////    let name: String = { "Taylor Swift".lowercased() }()
////}
//
//struct UpdateHistory {
//    let updateId: Int
////    let title: String // 불필요
//    let version: String
////    
////    static let updateDateFormatter = { // 불필요
////        let formatter = DateFormatter()
////        formatter.dateFormat = "yyyy년 M월 d일"
////        formatter.locale = Locale(identifier: "ko_KR")
////        return formatter
////    }()
////    
//    let updateDate: Date
////    var updateDateStr: String? { // 불필요
////        return Self.updateDateFormatter.string(from: updateDate)
////    }
////    
//    let content: String //description
////    let close: Bool // 불필요
//}
//
//class Person {
//    let name: String
//    let age: Int
//    
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//}
//
//class Member: Person {
////    let name: String
////    let age: Int
//    let height: Double
//    let weight: Double
//     
//    init(name: String, age: Int, height: Double, weight: Double) {
////        self.name = name
////        self.age = age
//        self.height = height
//        self.weight = weight
//        super.init(name: name, age: age)
//    }
//}
//
//class Employee: Person {
////    let name: String
////    let age: Int
//    let department: String
//    let rank: String
//    
//    init(name: String, age: Int, department: String, rank: String) {
////        self.name = name
////        self.age = age
//        self.department = department
//        self.rank = rank
//        super.init(name: name, age: age)
//    }
//}
//
//let e = Employee(name: "김개발", age: 44, department: "개발팀", rank: "인턴")
//e.department
//e.rank
//e.name
//e.age
//
//let p = Person(name: "김대표", age: 45)
//p.name
//p.age

// 하루만 진행하는 무료 온라인 캠프
extension Camp {
    // convenience initializer 간편 생성자. 편의 생성자.
    convenience init(title: String, subtitle: String, cardimageUrlStr: String, thumbnailImageUrlStr: String? = nil, isCertificationAvailable: Bool = true, campId: Int, startDate: Date, locationUrl: URL? = nil, status: Status = .preparingForOpening, generation: Int, priority: Int, isPublic: Bool, price: Double?) {
        //        self.campId = campId
        //        self.startDate = startDate
        //        self.endDate = endDate
        //        self.isOnlineCamp = isOnlineCamp
        //        self.locationUrl = locationUrl
        //        self.latitude = latitude
        //        self.longitude = longitude
        //        self.status = status
        //        self.generation = generation
        //        self.priority = priority
        //        self.isPublic = isPublic
        ////        self.period = period
        //        self.price = price
        //        self.discountedPrice = discountedPrice
        
        self.init(title: title, subtitle: subtitle, cardimageUrlStr: cardimageUrlStr, thumbnailImageUrlStr: thumbnailImageUrlStr,isCertificationAvailable: isCertificationAvailable, campId: campId, startDate: startDate, endDate: startDate, locationUrl: locationUrl, status: status, generation: 0, priority: priority, isPublic: isPublic, price: nil)
    }
}
