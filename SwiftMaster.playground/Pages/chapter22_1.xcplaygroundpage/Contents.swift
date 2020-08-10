import SwiftUI

protocol Container {
    associatedtype ItemType
    var count: Int { get }
    mutating func append(_ item: ItemType)
    subscript(i: Int) -> ItemType { get }
}

class MyContainer: Container {
    var items: Array<Int> = Array<Int>()
    
    var count: Int {
        return items.count
    }
    func append(_ item: Int) {
        items.append(item)
    }
    subscript(i: Int) -> Int {
        return items[i]
    }
}

struct IntStack: Container {
    var items = [Int]()
    mutating func push(_ item: Int) {
        items.append(item)
    }
    mutating func pop() -> Int {
        return items.removeLast()
    }
    
    mutating func append(_ item: Int) {
        self.push(item)
    }
    var count: Int {
        return items.count
    }
    subscript(i: Int) -> Int {
        return items[i]
    }
}

struct IntStack2: Container {
    typealias ItemType = Int
    var items = [ItemType]()
    mutating func push(_ item: ItemType) {
        items.append(item)
    }
    mutating func pop() -> ItemType {
        return items.removeLast()
    }
    
    mutating func append(_ item: ItemType) {
        self.push(item)
    }
    var count: Int {
        return items.count
    }
    subscript(i: ItemType) -> ItemType {
        return items[i]
    }
}


struct Stack<ItemType>: Container {
    var items = [ItemType]()
    mutating func push(_ item: ItemType) {
        items.append(item)
    }
    mutating func pop() -> ItemType {
        return items.removeLast()
    }
    
    mutating func append(_ item: ItemType) {
        self.push(item)
    }
    var count: Int {
        return items.count
    }
    subscript(i: Int) -> ItemType {
        return items[i]
    }
}

extension Stack {
    subscript<Indices: Sequence>(indices: Indices) -> [ItemType] where Indices.Iterator.Element == Int {
        var result = [ItemType]()
        for index in indices {
            result.append(self[index])
        }
        return result
    }
}

var integerStack: Stack<Int> = Stack<Int>()
integerStack.append(1)
integerStack.append(2)
integerStack.append(3)
integerStack.append(4)
integerStack.append(5)

print(integerStack[0...2])
