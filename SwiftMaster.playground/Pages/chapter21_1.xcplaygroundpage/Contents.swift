import Foundation

extension String {
    init(intTypeNumber: Int) {
        self = "\(intTypeNumber)"
    }
    
    init(doubleTypeNumber: Double) {
        self = "\(doubleTypeNumber)"
    }
}

let stringFormInt: String = String(intTypeNumber: 100)
let stringFromDouble: String = String(doubleTypeNumber: 100.0)

class Person {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

// class 이니셜라이저 추가는 지정 이니셜라이저는 추가할 수 없고 편의 이니셜라이저만 추가 가능하다.
extension Person {
    convenience init() {
        self.init(name: "Unknwon")
    }
}

let someOne: Person = Person()
print(someOne.name)
print()

struct Size {
    var w: Double = 0.0
    var h: Double = 0.0
}

struct Point {
    var x: Double = 0.0
    var y: Double = 0.0
}

struct Rect {
    var origin: Point = Point()
    var size: Size = Size()
}

let defaultRect: Rect = Rect()
let memberwiseRect: Rect = Rect(origin: Point(x: 2.0, y: 2.0), size: Size(w: 5.0, h: 5.0))
print(defaultRect)
print(memberwiseRect)
print()

extension Rect {
    init(center: Point, size: Size) {
        let originX: Double = center.x - (size.w / 2)
        let originY: Double = center.y - (size.h / 2)
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
}
let centerRect: Rect = Rect(center: Point(x: 4.0, y: 4.0), size: Size(w: 3.0, h: 3.0))
print(centerRect)
print()

extension String {
    subscript(appedValue: String) -> String {
        return self + appedValue
    }
    
    subscript(repeatCount: UInt) -> String {
        var str: String = ""
        
        for _ in 0..<repeatCount {
            str += self
        }
        
        return self
    }
}

print("abc"["def"])
print("abc"[3])
print()

extension Int {
    enum Kind {
        case negative, zero, positive
    }
    
    var kind: Kind {
        switch self {
        case 0:
            return .zero
        case let x where x > 0:
            return .positive
        default:
            return .negative
        }
    }
}

print(1.kind)
print(0.kind)
print((-1).kind)
print()

func printIntegerKinds(numbers: [Int]) {
    for number in numbers {
        switch number.kind {
        case .negative:
            print("- ", terminator: "")
        case .zero:
            print("0 ", terminator: "")
        case .positive:
            print("+ ", terminator: "")
        }
    }
    print()
}


printIntegerKinds(numbers: [3, 19, -27, 0, -6, 0, 7])

