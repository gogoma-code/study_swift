import SwiftUI

let number: Double = 5.0
var result: Double = number.truncatingRemainder(dividingBy: 1.5)
result = 12.truncatingRemainder(dividingBy: 2.5) //부동소수점 타입의 나머지 연산자

var result2: Int = 5 / 3
result2 = 10 / 3
print(result2)
print()

class SomeClass{
    
}

let refA: SomeClass = SomeClass()
let refB: SomeClass = SomeClass()
let refC: SomeClass = refA
print(refA === refB)
print(refA === refC)
print()

var valA: Int = 3
var valB: Int = 5
var biggerVal: Int = valA > valB ? valA : valB
print(biggerVal)

var strA: String = ""
var strB: String = "String"
var resultVal: Double = strA.isEmpty ? 1.0 : 0.0
print(resultVal)
resultVal = strB.isEmpty ? 1.0 : 0.0
print(resultVal)
print()

//오버플로 연산자
var unsignedInteger: UInt8 = 0
//let errorUnderflowResult: UInt8 = unsignedInteger - 1
let unerflowedValue: UInt8 = unsignedInteger &- 1 //255

unsignedInteger = UInt8.max
//let errorOverflowResult2: UInt8 = unsignedInteger + 1
let overflowedValue: UInt8 = unsignedInteger &+ 1 //0

//nil 병합 연산자
var valueInt: Int = nil != nil ? 1 : 0
valueInt = valueInt ?? 0

var valueInt2: Int = 1
valueInt2 = -valueInt2
valueInt2 = -valueInt2


