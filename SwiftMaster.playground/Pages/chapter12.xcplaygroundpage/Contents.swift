import Foundation

public struct SomeType {
    private var privateVal = 1
    fileprivate var fileprivateVal = 2
}

extension SomeType {
    public func publicMethod() {
        print("\(self.privateVal), \(self.fileprivateVal)")
    }
    
    private func privateMethod() {
        print("\(self.privateVal), \(self.fileprivateVal)")
    }
    
    fileprivate func fileprivateMethod() {
        print("\(self.privateVal), \(self.fileprivateVal)")
    }
}

var someType: SomeType = SomeType()
someType.publicMethod()
//someType.privateMethod() //X
someType.fileprivateMethod()
print()

struct AnotherType {
    var someIns: SomeType = SomeType()
    
    mutating func someMethod() {
        self.someIns.publicMethod()
        
        self.someIns.fileprivateVal = 200
        self.someIns.fileprivateMethod()
        
        //self.someIns.privateVal = 100 // Access X
        //self.someIns.privateMethod() // Access X
    }
}

var another: AnotherType = AnotherType()
another.someMethod()
