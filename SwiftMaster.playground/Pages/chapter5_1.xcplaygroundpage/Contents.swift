import Foundation

prefix operator **
prefix operator -**

prefix func ** (value: Int) -> Int {
    return value * value
}

prefix func -** (value: Int) -> Int {
    return -(value * value)
}

let minusFive: Int = -5
let sqrtMinusFive: Int = **minusFive //25
let sqrtMinusFive2: Int = -**minusFive //-25

prefix func ! (value: String) -> Bool {
    return value.isEmpty
}

var string: String = "yongki"
var isEmptyString: Bool = !string //false
string = ""
isEmptyString = !string //true

prefix func ** (value: String) -> String {
    return value + " " + value + "!"
}
print(**"yongki")


postfix operator **

postfix func ** (value: Int) -> Int {
    return value + 10
}
let five: Int = 5
five** //15
/// 하나의 피연산자에 2개의 전위,후위 연산자를 사용 시 후위 연산이 우선이다.
**five** //225 (10 + 5) * (10 + 5)

infix operator ** : MultiplicationPrecedence
func ** (lhs: String, rhs: String) -> Bool {
    return lhs.contains(rhs)
}

let helloStr: String = "hello yongki"
let yongkiStr: String = "yongki"
helloStr ** yongkiStr

class Car {
    var modelYear: Int?
    var modelName: String?
}

struct SmartPhone {
    var company: String?
    var model: String?
    
    static func == (lhs: SmartPhone, rhs: SmartPhone) -> Bool {
        return lhs.model == rhs.model
    }
}

func == (lhs: Car, rhs: Car) -> Bool {
    return lhs.modelName == rhs.modelName
}


//func == (lhs: SmartPhone, rhs: SmartPhone) -> Bool {
//    return lhs.model == rhs.model
//}

let myCar = Car()
myCar.modelName = "S"
let yourCar = Car()
yourCar.modelName = "S"

var myPhone = SmartPhone()
myPhone.model = "SE"
var yourPhone = SmartPhone()
yourPhone.model = "6"

myCar == yourCar //true
myPhone == yourPhone //false
