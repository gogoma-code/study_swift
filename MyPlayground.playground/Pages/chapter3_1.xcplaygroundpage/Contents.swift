import SwiftUI

let name: String = "yongki"
var introduce: String = String()
introduce.append("제 이릅은")
introduce = introduce + " " + name + "입니다."
print(introduce)
print("name의 글자 수: \(name.count)")
print("introduce가 비었습니까?: \(introduce.isEmpty)")

let unicodeSclarValue: String = "\u{2665}"
print(unicodeSclarValue)
print()

let hello: String = "Hello"
let yongki: String = "yongki"
var greeting: String = hello + " " + yongki + "!"
print(greeting)

greeting = hello
greeting += " "
greeting += yongki
greeting += "!"
print(greeting)

var isSameString = hello == "Hello"
print(isSameString) //true
isSameString = hello == "hello"
print(isSameString) //false
isSameString = yongki == "yongki"
print(isSameString)
isSameString = yongki == hello
print(isSameString)
print()

var hasPrefix: Bool = false
hasPrefix = hello.hasPrefix("He")
print(hasPrefix)
hasPrefix = hello.hasPrefix("HE")
print(hasPrefix)
hasPrefix = greeting.hasPrefix("Hello ")
print(hasPrefix)
hasPrefix = yongki.hasPrefix("ki")
print(hasPrefix)
hasPrefix = hello.hasPrefix("Hello")
print(hasPrefix)
print()

var hasSuffix: Bool = false
hasSuffix = hello.hasSuffix("He")
print(hasSuffix)
hasSuffix = hello.hasSuffix("llo")
print(hasSuffix)
hasSuffix = greeting.hasSuffix("ki")
print(hasSuffix)
hasSuffix = greeting.hasSuffix("ki!")
print(hasSuffix)
print()

var convertedString: String = ""
convertedString = hello.uppercased()
print(convertedString)
convertedString = hello.lowercased()
print(convertedString)
print()

var isEmptyString: Bool = false
isEmptyString = greeting.isEmpty
print(isEmptyString)
greeting = "안녕"
isEmptyString = greeting.isEmpty
print(isEmptyString)
greeting = ""
isEmptyString = greeting.isEmpty
print(isEmptyString)

print(greeting.count)
greeting = "안녕하세요"
print(greeting.count)
greeting = "안녕!"
print(greeting.count)
