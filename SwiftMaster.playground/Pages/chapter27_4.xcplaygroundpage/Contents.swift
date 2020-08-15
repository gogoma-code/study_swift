import Foundation

class Person {
    let name: String
    let hobby: String?
    
    lazy var introduce: () -> String = { [weak self] in
        guard let `self` = self else {
            return "원래의 참조 인스턴스가 없어졌습니다,"
        }
        
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
    }
    
    deinit {
        print("\(name) is being init")
    }
}

var yongki: Person? = Person(name: "yongki", hobby: "eating")
var hana: Person? = Person(name: "hana", hobby: "playing guitar")

hana?.introduce = yongki?.introduce ?? {" "}
print(yongki?.introduce())
yongki = nil
print(hana?.introduce())
