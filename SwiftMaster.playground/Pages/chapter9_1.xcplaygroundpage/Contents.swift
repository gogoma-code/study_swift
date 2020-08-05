import SwiftUI

class Person {
    var height: Float = 0.0
    var weight: Float = 0.0
}

var yongki: Person = Person()
yongki.height = 123.4
yongki.weight = 456.7
print(yongki)

let jenny: Person = Person()
jenny.height = 123.4
jenny.weight = 456.7
print(jenny)
print()

class Person2 {
    var height: Float = 0.0
    var weight: Float = 0.0
    
    init() {
        print("Person2 생성")
    }
    
    deinit {
        print("Person2 소멸")
    }
}

var yongki2: Person2? = Person2()
yongki2 = nil

