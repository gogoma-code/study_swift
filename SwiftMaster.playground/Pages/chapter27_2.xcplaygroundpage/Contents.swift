import Foundation

class Room {
    let number: String
    
    init(number: String) {
        self.number = number
    }
    
    weak var host: Person?
    
    deinit {
        print("Room \(number) is being deinit")
    }
}

class Person {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    var room: Room?
    
    deinit {
        print("\(name) is being deinit")
    }
}

var yongki: Person? = Person(name: "yongki")
var room: Room? = Room(number: "505")

room?.host = yongki
yongki?.room = room

yongki = nil
print(room?.host)
room = nil

print()
print()

class Person2 {
    let name: String
    
    var card: CreditCard?
    
    init(name: String) {
        self.name = name
        print("Person2 init")
    }
    
    deinit {
        print("\(name) is being deinit")
    }
}

class CreditCard {
    let number: UInt
    unowned let owner: Person2
    
    init(number: UInt, owner: Person2) {
        self.number = number
        self.owner = owner
        print("CreditCard init")
    }
    
    deinit {
        print("Card #\(number) is being deinit")
    }
}
var jisoo: Person2? = Person2(name: "jisoo")
if let person: Person2 = jisoo {
    person.card = CreditCard(number: 1004, owner: person)
}
jisoo = nil
