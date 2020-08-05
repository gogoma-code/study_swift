import SwiftUI

var myName: String = "yongki"
//myName = nil //error

var myName2: String? = "yongki"
print(myName2)
myName2 = nil
print(myName2)
print()

enum School: String {
    case primary = "유치원"
    case elementary = "초등학교"
    case middle = "중학교"
    case high = "고등학교"
}

enum Numbers: Int {
    case one = 1
    case two = 2
    case ten = 10
}

let primary = School(rawValue: "유치원")
let middle = School(rawValue: "중딩")

let one = Numbers(rawValue: 1)
let three = Numbers(rawValue: 3)
print()

func checkOptionalValue(value optionalValue: Any?) {
    switch optionalValue {
    case .none:
        print("This Optional variable is nil")
    case .some(let value):
        print("value is \(value)")
    }
}

var myName3: String? = "yongki"
checkOptionalValue(value: myName3)

myName3 = nil
checkOptionalValue(value: myName3)

let numbers: [Int?] = [2, nil, -4, nil, 100]
for number in numbers {
    switch number {
    case .some(let value) where value < 0:
        print("negative value \(value)")
    case .some(let value) where value > 10:
        print("large value \(value)")
    case .some(let value):
        print("value \(value)")
    case .none:
        print("nil")
    }
}

