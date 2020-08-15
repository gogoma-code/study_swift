import Foundation

func addThree(_ num: Int) -> Int {
    return num + 3
}

addThree(2)
//addThree(Optional(2)) // error
Optional(2).map { $0 + 3 }
Optional(2).map(addThree)

var value: Int? = 2
value.map{ $0 + 3 } // Optional(5)
value = nil
value.map{ $0 + 3 } // nil

func doubledEven(_ num: Int) -> Int? {
    if num.isMultiple(of: 2) {
        return num * 2
    }
    return nil
}

var test1: Int? = 4
print(test1.map(doubledEven))
var test2: Int? = 3
print(test2.flatMap(doubledEven))
var test3: Int? = 4
print(test3.flatMap(doubledEven))
print()

let optionals: [Int?] = [1, 2, nil, 5]
let mapped: [Int?] = optionals.map{ $0 }
let compactMapped: [Int] = optionals.compactMap{ $0 }
print(mapped)
print(compactMapped)
print()

let multipleContainer = [[1, 2, Optional.none], [3, Optional.none], [4, 5, Optional.none]]

let mappedMultipleContainer = multipleContainer.map{ $0.map{ $0 } }
print(mappedMultipleContainer)
let flatmappedMultipleContainer = multipleContainer.flatMap{ $0.flatMap{ $0 } }
print(flatmappedMultipleContainer)
print()

func stringToInteger(_ string: String) -> Int? {
    print("stringToInteger: \(Int(string))")
    return Int(string)
}

func integerToString(_ integer: Int) -> String? {
    print("integerToString: \(integer)")
    return "\(integer)"
}

var optionalString: String? = "2"

let flatResult = optionalString.flatMap(stringToInteger)
.flatMap(integerToString)
.flatMap(stringToInteger)
print(flatResult)
print()

let mapResult = optionalString.map(stringToInteger)
print(mapResult)
print()

var result: Int?
if let string: String = optionalString {
    if let number: Int = stringToInteger(string) {
        if let finalString: String = integerToString(number) {
            if let finalNumber: Int = stringToInteger(finalString) {
                result = Optional(finalNumber)
            }
        }
    }
}
print(result)
print()

func integerToNil(param: Int) -> String? {
    return nil
}
optionalString = "2"
result = optionalString.flatMap(stringToInteger)
.flatMap(integerToNil)
.flatMap(stringToInteger)
print(result)
