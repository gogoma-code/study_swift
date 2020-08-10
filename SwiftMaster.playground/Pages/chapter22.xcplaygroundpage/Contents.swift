import SwiftUI

prefix operator **

prefix func ** <T: BinaryInteger> (value: T) -> T {
    return value * value
}

let mFive: Int = -5
let five: Int = 5

let sqrtMFive: Int = **mFive
let sqrtFive: Int = **five

print(sqrtMFive)
print(sqrtFive)
print()

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA: Int = a
    a = b
    b = temporaryA
}

var num1: Int = 5
var num2: Int = 10
swapTwoInts(&num1, &num2)
print("\(num1), \(num2)")
print()

func swapTwoString(_ a: inout String, _ b: inout String) {
    let temporaryA: String = a
    a = b
    b = temporaryA
}
var str1: String = "A"
var str2: String = "B"
swapTwoString(&str1, &str2)
print("\(str1), \(str2)")
print()

func swapTwoValues(_ a: inout Any, _ b: inout Any) {
    let temporaryA: Any = a
    a = b
    b = temporaryA
}

var any1: Any = 1
var any2: Any = "Two"
swapTwoValues(&any1, &any2)
print("\(any1), \(any2)")
print()

any1 = str1
any2 = str2
swapTwoValues(&any1, &any2)
print("\(any1), \(any2)")
print("\(str1), \(str2)")
//swapTwoValues(&str1, &str2) // error! Any 외 다른 타입의 전달인자 전달 불가
print()


func swapTwoValues2<T>(_ a: inout T, _ b: inout T) {
    let temporaryA: T = a
    a = b
    b = temporaryA
}

swapTwoValues2(&num1, &num2)
print("\(num1), \(num2)")
swapTwoValues2(&str1, &str2)
print("\(str1), \(str2)")
swapTwoValues2(&any1, &any2)
print("\(any1), \(any2)")
//swapTwoValues2(&num1, &str1) // error! 같은 타입끼리만 가능
print()

struct Stack<Element> {
    var items = [Element]()
    mutating func push(_ item: Element) {
        items.append(item)
    }
    mutating func pop () -> Element {
        return items.removeLast()
    }
}

var doubleStack: Stack<Double> = Stack<Double>()
doubleStack.push(1.0)
print(doubleStack.items)
doubleStack.push(2.0)
print(doubleStack.items)
print(doubleStack.pop())
print(doubleStack.items)
print()

var stringStack: Stack<String> = Stack<String>()
stringStack.push("1")
print(stringStack.items)
stringStack.push("2")
print(stringStack.items)
print(stringStack.pop())
print(stringStack.items)
print()

extension Stack {
    var topElement: Element? {
        return self.items.last
    }
}
print(stringStack.topElement)
stringStack.pop()
print(stringStack.topElement)
print()


