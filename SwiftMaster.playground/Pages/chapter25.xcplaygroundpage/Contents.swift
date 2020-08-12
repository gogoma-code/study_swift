import SwiftUI

let string: String = "ABC"
switch string {
case _:
    print(string)
}
print()


let optionalString: String? = "ABC"
switch optionalString {
case "ABC"?:
    print(optionalString)
case _?:
    print("all")
case nil:
    print("nil")
}
print()


let yongki = ("yongki", 99, "Male")
switch yongki {
case ("yongki", _, _):
    print("Hello yongki!")
case (_, _, _):
    print("All")
}
print()


for _ in 0..<2 {
    print("Hello")
}
print()


var optionalValue: Int? = 100
print(optionalValue)
if case .some(let value) = optionalValue {
    print(value)
}
if case let value? = optionalValue {
    print(value)
}
print()


let arrayOfOptionalIntes: [Int?] = [nil, 2, 3, nil, 5]
for var number: Int? in arrayOfOptionalIntes {
    print("Found a \(number)")
}
print()
for case let number? in arrayOfOptionalIntes {
    print("Found a \(number)")
}
print()


let someVal: Any = 100
switch someVal {
case is String:
    print("string")
//case is Int: print(someVal + 1) // error! Any + Int 는 안 된다.
case let value as Int:
    print(value + 1)
default:
    print("default")
}
print()
