import Foundation

class Company {
    let name: String
    var ceo: CEO!
    
    init(name: String, ceoName: String) {
        self.name = name
        self.ceo = CEO(name: ceoName, company: self)
        print("Company init")
    }
    
    func introduce() {
        print("\(name)의 CEO는 \(ceo.name)입니다.")
    }
    
    deinit {
        print("Company deinit")
    }
}

class CEO {
    let name: String
    
    unowned let company: Company
    
    init(name: String, company: Company) {
        self.name = name
        self.company = company
        print("CEO init")
    }
    
    func introduce() {
        print("\(name)는 \(company.name)의 CEO입니다.")
    }
    
    deinit {
        print("CEO deinit")
    }
}
let company: Company = Company(name: "무한상사", ceoName: "김태호")
company.introduce()
company.ceo.introduce()

print()
print()

class Person {
    let name: String
    let hobby: String?
    
    lazy var introduce: () -> String = {
        var introduce: String = "My name is \(self.name)."
        
        guard let hobby = self.hobby else {
            return introduce
        }
        
        introduce += " "
        introduce += "My hobby is \(hobby)"
        
        return introduce
    }
    
    init(name: String, hobby: String? = nil) {
        self.name = name
        self.hobby = hobby
        print("\(name) is being init")
    }
    
    deinit {
        print("\(name) is being deinit")
    }
}
var yongki: Person? = Person(name: "yongki", hobby: "eating")
print(yongki?.introduce())
yongki = nil

print()
print()

var a = 0
var b = 0
let closure = { [a] in
    print(a, b)
    b = 20
}

a = 10
b = 20
closure()
print(a, b)

print()
print()

class SimpleClass {
    var val: Int = 0
}

var x = SimpleClass()
var y = SimpleClass()

let closure2 = { [x] in
    print(x.val, y.val)
}

x.val = 10
y.val = 10

closure2()

print()
print()

var x2: SimpleClass? = SimpleClass()
var y2 = SimpleClass()

let closure3 = { [weak x2, unowned y2] in
    print(x2?.val, y2.val)
}

closure3()

x2 = nil
y2.val = 10

closure3()

print()
print()

class Person2 {
    let name: String
    let hobby: String?
    
    lazy var introduce: () -> String = { [unowned self] in
        var introduce: String = "My name is \(self.name)."
        
        guard let hobby = self.hobby else {
            return introduce
        }
        
        introduce += " "
        introduce += "My hobby is \(hobby)"
        
        return introduce
    }
    
    init(name: String, hobby: String? = nil) {
        self.name = name
        self.hobby = hobby
        print("\(name) is being init")
    }
    
    deinit {
        print("\(name) is being deinit")
    }
}

var yongki2: Person2? = Person2(name: "yongki", hobby: "eating")
print(yongki2?.introduce())
yongki2 = nil

print()
print()

var yongki3: Person2? = Person2(name: "yongki", hobby: "eating")
var hana: Person2? = Person2(name: "hana", hobby: "playing guitar")

hana?.introduce = yongki3?.introduce ?? {" "}
print(yongki3?.introduce())
print(hana?.introduce())
yongki3 = nil
//print(hana?.introduce()) // error! yongki3는 메모리에서 해제

