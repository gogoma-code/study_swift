
import SwiftUI

class AClass {
    static var typeProperty: Int = 0
    
    var instanceProperty: Int = 0 {
        didSet {
            AClass.typeProperty = instanceProperty + 100
        }
    }
    
    static var typeComputedProperty: Int {
        get {
            return typeProperty
        }
        set {
            typeProperty = newValue
        }
    }
}

AClass.typeProperty = 123
print(AClass.typeProperty)

let clasInstance: AClass = AClass()
clasInstance.instanceProperty = 100

print(AClass.typeProperty)
print(AClass.typeComputedProperty)
print()

class Account {
    static let dollarExchangeRate: Double = 1000.0 // 타입 상수
    
    var credit: Int = 0
    var dollarValue: Double {
        get {
            return Double(credit) / Self.dollarExchangeRate
        }
        set {
            credit = Int(newValue * Self.dollarExchangeRate)
            print("잔액을 \(newValue)달러로 변경 중입니다.")
        }
    }
}

print(Account.dollarExchangeRate)
var yongAccount: Account = Account()
yongAccount.credit = 3000
print(yongAccount.credit)
print(yongAccount.dollarValue)
yongAccount.dollarValue = 1000
print(yongAccount.credit)
print(yongAccount.dollarValue)
print()

func someFunction(paramA: Any, paramB: Any) {
    print("someFunction called...")
}

var functionReference = someFunction(paramA: paramB:)
functionReference("A", "B")


class Person {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

struct Stuff {
    var name: String
    var owner: Person
}

print(type(of: \Person.name))
print(type(of: \Stuff.name))
print(type(of: \Stuff.owner))
print()

let keyPath = \Stuff.owner
let nameKeyPath = keyPath.appending(path: \.name)
print(keyPath)
print(nameKeyPath)

class Person2 {
    let name: String
    init(name: String) {
        self.name = name
    }
}

struct Stuff2 {
    var name: String
    var owner: Person2
}

let yongki = Person2(name: "yongki")
var hana = Person2(name: "hana")
let macbook = Stuff2(name: "MacBook Pro", owner: yongki)
var iMac = Stuff2(name: "iMac", owner: yongki)
let iPhone = Stuff2(name: "iPhone", owner: hana)

let stuffNameKeyPath = \Stuff2.name
let ownerKeyPath = \Stuff2.owner

let ownerNameKeyPath = ownerKeyPath.appending(path: \.name)

print(macbook[keyPath: stuffNameKeyPath])
print(iMac[keyPath: stuffNameKeyPath])
print(iPhone[keyPath: stuffNameKeyPath])

print(macbook[keyPath: ownerKeyPath])
print(iMac[keyPath: ownerKeyPath])
print(iMac[keyPath: ownerKeyPath].name)
print(iPhone[keyPath: ownerKeyPath])
print(iPhone[keyPath: ownerKeyPath].name)

iMac[keyPath: stuffNameKeyPath] = "iMac Pro"
iMac[keyPath: ownerKeyPath] = hana

print(iMac[keyPath: stuffNameKeyPath])
print(iMac[keyPath: ownerKeyPath])
print(iMac[keyPath: ownerKeyPath].name)

//macbook[keyPath: stuffNameKeyPath] = "macbook pro touch bar" //let은 변경 불가
//yongki[keyPath: \Person2.name] = "bear"
//hana[keyPath: \Person2.name] = "hanaro" // error! 만약 Person2.name 이 let 이 아니라 var 였다면 변경 가능


