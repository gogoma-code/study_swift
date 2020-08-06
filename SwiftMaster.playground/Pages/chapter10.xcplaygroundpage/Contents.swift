import SwiftUI

struct CordinatePoint {
    var x: Int // 저장 프로퍼티
    var y: Int // 저장 프로퍼티
}

let yongkiPoint: CordinatePoint = CordinatePoint(x: 10, y: 5)
print(yongkiPoint)
print()

class Position {
    var point: CordinatePoint // 저장 프로퍼티(변수) - 변경 가능
    let name: String // 저장 프로퍼티(상수) - 변경 불가능
    
    // 프로퍼티 기본값을 지정해주지 않는다면 이니셜라이저를 따로 정의해주어야 합니다.
    init(name: String, currentPoint: CordinatePoint) {
        self.name = name
        self.point = currentPoint
    }
}

let yongkiPosition: Position = Position(name: "yongki", currentPoint: yongkiPoint)
print(yongkiPosition.point)
print(yongkiPosition.name)
print()

struct CordinatePoint2 {
    var x: Int = 0
    var y: Int = 0
}

let yongkiPoint2: CordinatePoint2 = CordinatePoint2()
let wizplanPoint: CordinatePoint2 = CordinatePoint2(x: 10, y: 5)

print("yongki`s point : \(yongkiPoint2.x), \(yongkiPoint2.y)")
print("wizplan`s point : \(wizplanPoint.x), \(wizplanPoint.y)")
print()

class Position2 {
    var point: CordinatePoint2 = CordinatePoint2()
    var name: String = "Unknown"
}

let yongkiPosition2: Position2 = Position2()
print(yongkiPosition2.point)
print(yongkiPosition2.name)
print()
yongkiPosition2.point = yongkiPoint2
yongkiPosition2.name = "yongki"
print(yongkiPosition2.point)
print(yongkiPosition2.name)
print()

struct CordinatePoint3 {
    var x: Int
    var y: Int
}

class Position3 {
    var point: CordinatePoint3?
    let name: String
    
    init(name: String) {
        self.name = name
    }
}

let yongkiPosition3: Position3 = Position3(name: "yongki")
print(yongkiPosition3.name)
print(yongkiPosition3.point)
print()
yongkiPosition3.point = CordinatePoint3(x: 20, y: 10)
print(yongkiPosition3.point == nil ? "pNil" : yongkiPosition3.point!)
print()


struct CordinatePoint4 {
    var x: Int = 0
    var y: Int = 0
}

class Position4 {
    lazy var point: CordinatePoint4 = CordinatePoint4()
    let name: String
    
    init(name: String) {
        self.name = name
    }
}

let yongkiPosition4: Position4 = Position4(name: "yongki")
print(yongkiPosition4.name)
print(yongkiPosition4.point)
print()

struct CordinatePoint5 {
    var x: Int
    var y: Int
    
    func oppositePoint() -> Self {
        return Self(x: -x, y: -y)
    }
    
    mutating func setOppositePoint(_ opposite: Self) {
        x = -opposite.x
        y = -opposite.y
    }
}

var yongkiPosition5: CordinatePoint5 = CordinatePoint5(x: 10, y: 20)
print(yongkiPosition5)
print(yongkiPosition5.oppositePoint())
print(yongkiPosition5)
yongkiPosition5.setOppositePoint(CordinatePoint5(x: 15, y: 20))
print(yongkiPosition5)
print()

struct CordinatePoint6 {
    var x: Int
    var y: Int
    
    var oppositePoint: CordinatePoint6 {
        get {
            return CordinatePoint6(x: -x, y: -y)
        }
        
        set(opposite) {
            x = -opposite.x
            y = -opposite.y
        }
    }
}

var yongkiPosition6: CordinatePoint6 = CordinatePoint6(x: 10, y: 20)
print(yongkiPosition6)
print(yongkiPosition6.oppositePoint)
yongkiPosition6.oppositePoint = CordinatePoint6(x: 15, y: 10)
print(yongkiPosition6)
print()

struct CordinatePoint7 {
    var x: Int
    var y: Int
    
    var oppositePoint: CordinatePoint7 {
        get {
            return CordinatePoint7(x: -x, y: -y)
        }
        
        set {
            x = -newValue.x
            y = -newValue.y
        }
    }
}
var yongkiPoint7: CordinatePoint7 = CordinatePoint7(x: 10, y: 20)
print(yongkiPoint7)
print(yongkiPoint7.oppositePoint)
yongkiPoint7.oppositePoint = CordinatePoint7(x: 5, y: 7)
print(yongkiPoint7)

