import Foundation

class Person {
    let name: String
    
    init(name: String) {
        self.name = name
        print("\(name) is being init")
    }
    
    deinit {
        print("\(name) is being deinit")
    }
}
var ref1: Person?
var ref2: Person?
var ref3: Person?

ref1 = Person(name: "yongki")
ref2 = ref1
ref3 = ref1

ref3 = nil
ref2 = nil
ref1 = nil
print()
print()


var globalRef: Person?
func foo() {
    let yongki: Person = Person(name: "yongki")
    
    globalRef = yongki
}
foo()
print()


