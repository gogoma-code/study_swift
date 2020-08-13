import SwiftUI

let tuples: [(Int, Int)] = [(1, 2), (1, -1), (1, 0), (0, 2)]

for tuple in tuples {
    switch tuple {
    case let (x, y) where x == y:
        print("x == y")
    case let (x, y) where x == -y:
        print("x == -y")
    case let (x, y) where x > y:
        print("x > y")
    case (1, _):
        print("x == 1")
    case (_, 2):
        print("y == 2")
    default:
        print("\(tuple.0), \(tuple.1)")
    }
}
print()

var repeatCount: Int = 0
for tuple in tuples {
    switch tuple {
    case let (x, y) where x == y && repeatCount > 2:
        print("x == y")
    case let (x, y) where repeatCount < 2:
        print("\(x), \(y)")
    default:
        print("Nothing")
    }
    
    repeatCount += 1
}
print()

let firstVal: Int = 50
let secondVal: Int = 30

switch firstVal + secondVal {
case let total where total > 100:
    print("total > 100")
case let total where total < 0:
    print("total < 0")
case let total where total == 0:
    print("total == 0")
case let total:
    print(total)
}
print()

let arrayOfOptionalInts: [Int?] = [nil, 2, 3, nil, 5]
for case let number? in arrayOfOptionalInts where number > 2 {
    print("Found a \(number)")
}
print()

let anyValue: Any = "ABC"
switch anyValue {
case let value where value is Int:
    print("value is Int")
case let value where value is String:
    print("value is String")
case let value where value is Double:
    print("value is Double")
default:
    print("UnKnown type")
}
print()

var things: [Any] = [Any]()
things.append(0)
things.append(0.0)
things.append(42)
things.append(3.14159)
things.append("hello")
things.append((3.0, 5.0))
things.append({ (name: String) -> String in "Hello, \(name) "})
print(things)
for thing in things {
    switch thing {
    case 0 as Int:
        print("zero as an Int")
    case 0 as Double:
        print("zero as a Double")
    case let someInt as Int:
        print("an integer value of \(someInt)")
    case let someDouble as Double where someDouble > 0:
        print("a positive double value of \(someDouble)")
    case is Double:
        print("some other double value that I don`t want to print")
    case let someString as String:
        print("a string value of \"\(someString)\"")
    case let (x, y) as (Double, Double):
        print("an (x, y) point at \(x), \(y)")
    case let stringConverter as (String) -> String:
        print(stringConverter("Michael"))
    default:
        print("something else")
    }
}
print()

var points: [(Int, Int)] = [(0, 0), (1, 2), (2, 2)]
for point in points {
    switch point {
    case (0, 0):
        print("원점")
    case (-2...2, -2...2) where point.0 != 1:
        print("\(point.0), \(point.1)은 원점과 가깝습니다.")
    default:
        print("point \(point.0), \(point.1)")
    }
}

