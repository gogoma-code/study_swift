import Foundation

let numbers: [Int] = [0, 1, 2, 3, 4]
var doubledNumbers: [Int] = numbers.map { (number: Int) -> Int in
    return number * 2
}
print(doubledNumbers)

doubledNumbers = numbers.map({return $0 * 2})
print(doubledNumbers)

doubledNumbers = numbers.map({$0 * 2})
print(doubledNumbers)

doubledNumbers = numbers.map {$0 * 2}
print(doubledNumbers)
print()

let evenNumbers: [Int] = [0, 2, 4, 6, 8]
let oddNumbers: [Int] = [0, 1, 3, 5, 7]
let multiplyTwo: (Int) -> Int = {$0 * 2}

let doubledEvenNumbers = evenNumbers.map(multiplyTwo)
print(doubledEvenNumbers)

let doubledOddNumbers = oddNumbers.map(multiplyTwo)
print(doubledOddNumbers)
print()

let alphabetDictionary: [String: String] = ["a": "A", "b": "B"]

var keys: [String] = alphabetDictionary.map { (tuple: (String, String)) -> String in
    return tuple.0
}
keys = alphabetDictionary.map {$0.0}
let values: [String] = alphabetDictionary.map { $0.1 }
print(keys)
print(values)
print()

var numberSet: Set<Int> = [1, 2, 3, 4, 5]
let resultSet = numberSet.map{ $0 * 2 }
print(resultSet)
print()

let optionalInt: Int? = 3
let resultInt: Int? = optionalInt.map{ $0 * 2 }
print(resultInt)
print()

let range: CountableClosedRange = (0...3)
let resultRange: [Int] = range.map{ $0 }
print(resultRange)

