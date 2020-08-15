import Foundation

for i in 0...3 {
    if i == 2 {
        print(i)
    } else {
        continue
    }
}
print()

for i in 0...3 {
    guard i == 2 else {
        continue
    }
    print(i)
}
print()

func greet(_ person: [String: String]) {
    guard let name: String = person["name"] else {
        return
    }
    print("Hello \(name)!")
    
    guard let location: String = person["location"] else {
        print("I hope the weather is nice near you")
        return
    }
    print("I hope the weather is nice in \(location)")
}

var personInfo: [String: String] = [String: String]()
personInfo["name"] = "Jenny"
greet(personInfo)
print()

personInfo["location"] = "Korea"
greet(personInfo)
print()

func enterClub(name: String?, age: Int?) {
    guard let name: String = name, let age: Int = age, age > 19, name.isEmpty == false else {
        print("You are too young to enter the club")
        return
    }
    
    print("Welcome \(name)")
}

enterClub(name: "yongki", age: 29)
enterClub(name: "yongki", age: 15)
enterClub(name: "", age: 29)
enterClub(name: "yongki", age: nil)
print()

let first: Int = 3
let second: Int = 5

