import Foundation

let numbers: [Int] = [1, 2, 3]

var sum: Int = numbers.reduce(0, {(result: Int, next: Int) -> Int in
    print("\(result) + \(next)")
    return result + next
})
print(sum)
print()

let subtract: Int = numbers.reduce(0, {(result: Int, next: Int) -> Int in
    print("\(result) - \(next)")
    return result - next
})
print(subtract)
print()

let sumFromThree: Int = numbers.reduce(3) {
    print("\($0) + \($1)")
    return $0 + $1
}
print(sumFromThree)
print()

var subtractFromThree: Int = numbers.reduce(3) {
    print("\($0) - \($1)")
    return $0 - $1
}
print(subtractFromThree)
print()

let names: [String] = ["Chopa", "Jay", "Joker", "Nova"]
let reduceNames: String = names.reduce("yagom`s friend : ") {
    return $0 + ", " + $1
}
print(reduceNames)
print()

sum = numbers.reduce(into: 0, {(result: inout Int, next: Int) in
    print("\(result) + \(next)")
    result += next
})
print(sum)
print()

subtractFromThree = numbers.reduce(into: 3, {
    print("\($0), \($1)")
    $0 -= $1
})
print(subtractFromThree)
print()

var doubledNumbers: [Int] = numbers.reduce(into: [1, 2], { (result: inout [Int], next: Int) in
    print("result: \(result), next: \(next)")
    
    guard next % 2 == 0 else {
        return
    }
    
    print("\(result) append \(next)")
    
    result.append(next * 2)
})
print(doubledNumbers)
print()
doubledNumbers = [1, 2] + numbers.filter{ $0.isMultiple(of: 2) }.map{ $0 * 2 }
print(doubledNumbers)
print()

var upperCasedNames: [String]
upperCasedNames = names.reduce(into: [], {
    $0.append($1.uppercased())
})
print(upperCasedNames)
upperCasedNames = names.reduce(into: [], { (result: inout [String], next: String) in
    result.append(next.uppercased())
})
print(upperCasedNames)
upperCasedNames = names.map { $0.uppercased() }
print(upperCasedNames)
