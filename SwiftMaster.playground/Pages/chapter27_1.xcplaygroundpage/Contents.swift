import Foundation

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

class Room {
    let number: String
    
    init(number: String) {
        self.number = number
    }
    
    var host: Person?
    
    deinit {
        print("Room \(number) is being deinit")
    }
}

var yongki: Person? = Person(name: "yongki")
var room: Room? = Room(number: "505")

room?.host = yongki
yongki?.room = room

yongki = nil
room = nil

yongki = Person(name: "yongki")
room = Room(number: "505")

room?.host = yongki
yongki?.room = room

yongki?.room = nil
yongki = nil
room?.host = nil
room = nil
