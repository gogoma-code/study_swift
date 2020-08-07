import SwiftUI

func backwards(first: String, second: String) -> Bool {
    print("\(first), \(second) 비교중")
    return first > second
}

let names: [String] = ["wizplan", "erid", "yagom", "jenny"]
let reversed: [String] = names.sorted(by: backwards)
print("1", reversed)
print()

let reversed2: [String] = names.sorted { (first: String, second: String) -> Bool in
    return first > second
}
print("2", reversed2)
print()

let reversed3: [String] = names.sorted() { (first: String, second: String) -> Bool in
    return first > second
}
print("3", reversed3)
print()

let reversed4: [String] = names.sorted { (first: String, second: String) -> Bool in
    return first > second
}
print("4", reversed4)
print()

let reversed5: [String] = names.sorted() { (first, second) -> Bool in
    return first > second
}
print("5", reversed5)
print()

let reversed6: [String] = names.sorted() {
    return $0 > $1
}
print("6", reversed6)
print()

let reversed7: [String] = names.sorted() { $0 > $1 }
print("7", reversed7)
print()

let reversed8: [String] = names.sorted(by: >)
print("8", reversed8)
print()

func makeIncrementer(forIncrement amount: Int) -> (() -> Int) {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let incrementByTwo: (() -> Int) = makeIncrementer(forIncrement: 2)

var first: Int = incrementByTwo()
var second: Int = incrementByTwo()
var third: Int = incrementByTwo()
print(first, second, third)

let inTwo1: (() -> Int) = makeIncrementer(forIncrement: 2)
let inTwo2: (() -> Int) = makeIncrementer(forIncrement: 2)
let inTen: (() -> Int) = makeIncrementer(forIncrement: 10)
first = inTwo1()
second = inTwo2()
third = inTen()
print(first, second, third)

first = inTwo1()
second = inTwo2()
third = inTen()
print(first, second, third)

first = inTwo1()
second = inTwo2()
third = inTen()
print(first, second, third)
print()

let inTwo3: (() -> Int) = makeIncrementer(forIncrement: 2)
let same: (() -> Int) = inTwo3

first = inTwo3()
second = same()
print(first, second)
print()

typealias VoidVoidClosure = () -> Void
let firstClosure: VoidVoidClosure = {
    print("Closure A")
}
let secondClosure: VoidVoidClosure = {
    print("Closure B")
}

func returnOneClosure(first: @escaping VoidVoidClosure, second: @escaping VoidVoidClosure, shouldReturnFirstClosure: Bool) -> VoidVoidClosure {
    return shouldReturnFirstClosure ? first: second
}
let returnedClosure: VoidVoidClosure = returnOneClosure(first: firstClosure, second: secondClosure, shouldReturnFirstClosure: true)
returnedClosure()

var closures: [VoidVoidClosure] = []
func appendClosure(closure: @escaping VoidVoidClosure) {
    closures.append(closure)
}
let returnedClosure2: VoidVoidClosure = returnOneClosure(first: firstClosure, second: secondClosure, shouldReturnFirstClosure: true)
appendClosure(closure: returnedClosure2)
returnedClosure2()

