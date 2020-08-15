import Foundation

enum Student {
    case elementary, middle, high
    case none
    
    init() {
        self = .none
    }
    
    init(koreanAge: Int) {
        switch koreanAge {
        case 8...13:
            self = .elementary
        case 14...16:
            self = .middle
        case 17...19:
            self = .high
        default:
            self = .none
        }
    }
    
    init(bornAt: Int, currentYear: Int) {
        self.init(koreanAge: currentYear - bornAt + 1)
    }
}

var younger: Student = Student(koreanAge: 16)
print(younger)

younger = Student(bornAt: 1998, currentYear: 2016)
print(younger)
print()

class Person {
    let name: String
    var age: Int?
    
    init?(name: String) {
        if name.isEmpty {
            return nil
        }
        
        self.name = name
    }
    
    init?(name: String, age: Int) {
        if name.isEmpty || age < 0 {
            return nil
        }
        self.name = name
        self.age = age
    }
}

let yongki: Person? = Person(name: "yongki", age: 99)

if let person: Person = yongki {
    print(person.name)
} else {
    print("Person wasn't init")
}
print()

