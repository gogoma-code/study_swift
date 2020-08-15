import Foundation

@objc protocol Moveable {
    func walk()
    @objc optional func fly()
}

class Tiger: NSObject, Moveable {
    func walk() {
        print("Tiger walks")
    }
}

class Bird: NSObject, Moveable {
    func walk() {
        print("Birds walks")
    }
    
    func fly() {
        print("Birds flys")
    }
}

let tiger: Tiger = Tiger()
let bird: Bird = Bird()

tiger.walk()
bird.walk()
bird.fly()
print()

var moveIns: Moveable = tiger
moveIns.fly?()
moveIns = bird
moveIns.fly?()



