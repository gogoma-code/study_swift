/**
 - 20.3.3 가변 메서드 요구
 - 20.3.4 이니셜라이저 요구
 */
import Foundation

/* 20.3.3 가변 메서드 요구 */
protocol Resettable {
    mutating func reset()
}

class Person: Resettable {
    var name: String?
    var age: Int?
    
    func reset() {
        self.name = nil
        self.age = nil
    }
}

struct Point: Resettable {
    var x: Int = 0
    var y: Int = 0
    
    mutating func reset() {
        self.x = 0
        self.y = 0
    }
}

enum Direction: Resettable {
    case east, west, south, north, unknwon
    
    mutating func reset() {
        self = Direction.unknwon
    }
}

/* 20.3.4 이니셜라이저 요구 */
protocol Named {
    var name: String { get }
    
    init(name: String)
}

struct Pet: Named {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class Person2: Named {
    var name: String
    
    required init(name: String) {
        self.name = name
    }
}


class School {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class MiddleSchool: School, Named {
    required override init(name: String) {
        super.init(name: name)
    }
}

protocol Named2 {
    var name: String { get }
    
    init?(name: String)
}

struct Animal: Named2 {
    var name: String
    
    init!(name: String) {
        self.name = name
    }
}

struct Pet2: Named2 {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class Person3: Named2 {
    var name: String
    
    required init(name: String) {
        self.name = name
    }
}

class School2: Named2 {
    var name: String
    
    required init?(name: String) {
        self.name = name
    }
}


var someNamed: Named2 = Animal(name: "Animal")
someNamed = Pet2(name: "Pet")
someNamed = Person3(name: "Person")
someNamed = School2(name: "School")!

