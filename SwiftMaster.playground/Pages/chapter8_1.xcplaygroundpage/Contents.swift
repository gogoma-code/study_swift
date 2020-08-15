
import Foundation

var myName: String? = "yongki"
var yongki: String = myName!

myName = nil
//yongki = myName! //error

if myName != nil {
    print("My Name is \(myName!)")
} else {
    print("myName == nil")
}
print()

var myName2: String? = "yongki"
if let name = myName2 {
    print("My name is \(name)")
} else {
    print("myName == nil")
}
print()

if var name = myName2 {
    name = "wizplan"
    print("my name is \(name)")
} else {
    print("myName == nil")
}
print()

var myName3: String? = "yongki"
var yourName3: String? = nil
if let name = myName3, let friend = yourName3 {
    print("we ard friend! \(name), \(friend)")
}

yourName3 = "eric"
if let name = myName3, let friend = yourName3 {
    print("we ard friend! \(name), \(friend)")
}
print()

var myName4: String! = "yongki"
print(myName4)
myName4 = nil

if let name = myName4 {
    print("my name is \(name)")
} else {
    print("name == nil")
}
print()
//myName4.isEmpty //error

