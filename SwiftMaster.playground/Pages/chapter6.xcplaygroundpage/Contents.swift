import Foundation

let first: Int = 5
let second: Int = 7

if first > second {
    print("first > second")
} else if first < second {
    print("first < second")
} else {
    print("first == second")
}


let int1: Int = 11
switch int1 {
case 0:
    print("zero")
case 1...10:
    print("1...10")
case Int.min..<0, 101..<Int.max:
    print("int1 < 0 or int1 > 100")
    break;
default:
    print("10 < int1 <= 100")
}

let double1: Double = 0.0
switch double1 {
case 0:
    print("zero")
case 1.5...10.5:
    print("1.5 <= x <= 10.5")
default:
    print("default")
}


let str1: String = "yongki"
switch str1 {
case "yagon":
    print("yagon")
case "jay":
    print("jay")
case "jenny":
    fallthrough //아무것도 입력하지 않으면 error, 단순히 패스의 트릭을 주고 싶다면 fallthrough 사용
case "joker":
    fallthrough
case "yongki":
    print("yongki")
default:
    print("default")
}

typealias NameAge = (name: String, age: Int)
var tuple1: NameAge = ("yongki", 29)

switch tuple1 {
case ("yagom", 29):
    print("yagom 29")
case ("yongki", 29):
    print("yongki 29")
default:
    print("default")
}

tuple1 = ("yongki", 29)
switch tuple1 {
case ("yongki", 28):
    print("O")
case ("yongki", _):
    print("이름만 O, 나이는 \(tuple1.age)")
case (_, 29):
    print("나이만 O, 이름은 \(tuple1.name)")
default:
    print("default")
}

switch tuple1 {
case ("yongki", 30):
    print("O")
case ("yongki", let age):
    print("yongki, \(age)")
case (let name, 29):
    print("29, \(name)")
default:
    print("default")
}

let 직급: String = "사원"
let 연차: Int = 1
let 인턴인가: Bool = false

switch 직급 {
case "사원" where 인턴인가 == true:
    print("인턴")
case "사원" where 연차 < 2 && 인턴인가 == false:
    print("신입사원")
case "사원":
    print("사원")
case "대리":
    print("대리")
default:
    print("사장?")
}

enum School {
    case primary, elementary, middle, high, college, university, graduate
}

let 최종학력: School = School.university

switch 최종학력{
case .primary:
    print("유치원")
case .elementary:
    print("초등학교")
case .middle:
    print("중학교")
case .high:
    print("고등학교")
case .college, .university:
    print("대학(교)")
@unknown case _:
    print("???")
}

