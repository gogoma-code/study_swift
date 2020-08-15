import Foundation

protocol Readable {
    func read()
}

protocol Writeable {
    func write()
}

protocol ReadSpeakable: Readable {
    func speak()
}

protocol ReadWriteSpeakable: Readable, Writeable {
    func speak()
}


class SomeClass: ReadWriteSpeakable {
    func read() {
        print("Read")
    }
    
    func write() {
        print("Write")
    }
    
    func speak() {
        print("Speak")
    }
}

protocol ClassOnleProtocol: class, Readable, Writeable {
    // 추가 요구사항
}

class someClass: ClassOnleProtocol {
    func read() { }
    func write() { }
}

//struct someStruct: ClassOnleProtocol { } // error! class가 포함된 protocol은 class 타입만 가능


protocol Named {
    var name: String { get }
}

protocol Aged {
    var age: Int { get }
}

struct Person: Named, Aged {
    var name: String
    var age: Int
}

class Car: Named {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class Truck: Car, Aged {
    var age: Int
    
    init(name: String, age: Int) {
        self.age = age
        super.init(name: name)
    }
}

func celebrateBrithday(to celebrator: Named & Aged) {
    print("Happy birthday \(celebrator.name)!! Now you are \(celebrator.age)")
}

let yongki: Person = Person(name: "yongki", age: 99)
celebrateBrithday(to: yongki)

let myCar: Car = Car(name: "Boong Boong")
//celebrateBrithday(to: myCar) // error! not (Named & Aged)

//var someVariable: Car & Truck & Aged // error! class & protocol 조합에서는 1개의 class 만 조합 가능
var someVar: Car & Aged

someVar = Truck(name: "Truck", age: 5)
//someVar = myCar // error! myCar 는 Car class 이므로 Aged protocol을 준수하지 않는다.

print(yongki is Named)
print(yongki is Aged)

print(myCar is Named)
print(myCar is Aged)

if let castedInstance: Named = yongki as? Named {
    print("\(castedInstance) is Named")
}

if let cast: Aged = yongki as? Aged {
    print("\(cast) is Aged")
}

if let cast: Named = myCar as? Named {
    print("\(cast) is Named")
}

if let cast: Aged = myCar as? Aged {
    print("\(cast) is Aged")
} else {
    print("myCar is not Aged")
}

