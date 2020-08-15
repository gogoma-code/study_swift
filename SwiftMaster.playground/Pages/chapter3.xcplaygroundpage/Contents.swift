import Foundation

var integer: Int = -100
let unsignedInteger: UInt = 50
print("integer: \(integer), unsignedInteger: \(unsignedInteger)")
print("int MAX: \(Int.max), int MIN: \(Int.min)")
print("UInt MAX: \(UInt.max), UInt MIN: \(UInt.min)")
let largeInteger: Int64 = Int64.max
let smallUnsignedInteger: UInt8 = UInt8.max
print("Int64 MAX: \(Int64.max), UInt8 MAX: \(UInt8.max)")

integer = Int(unsignedInteger)

let decimalInteger: Int = 28
let binaryInteger: Int = 0b11100
let octalInteger: Int = 0o34
let hexadecimalInteger: Int = 0x1c

var boolean: Bool = true
boolean.toggle()
let iLoveYou: Bool = true
let isTimeUnlimited: Bool = false
print("\(isTimeUnlimited)")
print()

var floatValue: Float = 1234567890.1
print("floatVluae: \(floatValue)")

let doubleValue: Double = 1234567890.1
print("doubleValue: \(doubleValue)")

floatValue = 123456.1
print(floatValue)

print(Int.random(in: -100...100))
print(UInt.random(in: 1...30))
print(Double.random(in: 1.5...4.3))
print(Float.random(in: -0.5...1.5))

