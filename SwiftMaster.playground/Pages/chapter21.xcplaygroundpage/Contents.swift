import Foundation

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
    
    var isOdd: Bool {
        return self % 2 == 1
    }
}

print(1.isEven)
print(2.isEven)
print(1.isOdd)
print(2.isOdd)
print()

var number: Int = 3
print(number.isEven)
print(number.isOdd)
print()

extension Int {
    func multiply(by n: Int) -> Int {
        return self * n
    }
    
    mutating func multiplySelf(by n: Int) {
        self = self.multiply(by: n)
    }
    
    static func isIntTypeInstance(_ instance: Any) -> Bool {
        return instance is Int
    }
}

print(3.multiply(by: 2))
print(4.multiply(by: 5))
print()

var num: Int = 3
num.multiplySelf(by: 2)
print(num)
num.multiplySelf(by: 3)
print(num)
print()

Int.isIntTypeInstance(num) // true
Int.isIntTypeInstance(3) // true
Int.isIntTypeInstance(3.0) // false
Int.isIntTypeInstance("3") // false


struct Position {
    var x: Int
    var y: Int
}

extension Position {
    static func + (left: Position, right: Position) -> Position {
        return Position(x: left.x + right.x, y: left.y + right.y)
    }
    
    static prefix func - (vector: Position) -> Position {
        return Position(x: -vector.x, y: -vector.y)
    }
    
    static func += (left: inout Position, right: Position) {
        left = left + right
    }
}

extension Position {
    static func == (left: Position, right: Position) -> Bool {
        return (left.x == right.x) && (left.y == right.y)
    }
    
    static func != (left: Position, right: Position) -> Bool {
        return !(left == right)
    }
}

extension Position {
    static prefix func ++ (position: inout Position) -> Position {
        position.x += 1
        position.y += 1
        return position
    }
}

var myPos: Position = Position(x: 10, y: 10)
var uPos: Position = Position(x: -5, y: -5)

print(myPos + uPos)
print(-myPos)

myPos += uPos
print(myPos)

print(myPos == uPos)
print(myPos != uPos)

print(++myPos)
