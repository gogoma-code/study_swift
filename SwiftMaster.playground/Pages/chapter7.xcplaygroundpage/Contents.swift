import SwiftUI

//func 함수이름 (매개변수...) -> 반환 타입 {
//    실행 구문
//    return 반환 값
//}

func hello(name: String) -> String {
    return "Hello \(name)"
}

print(hello(name: "yongki"))

func introduce(name: String) -> String {
    return "제 이름은 " + name + "입니다."
}
print(introduce(name: "용기"))

func sayHello(myName: String, yourName: String) -> String {
    return "Hello " + myName + ", " + yourName
}

print(sayHello(myName: "yongki", yourName: "hyemi"))

func sayHello(_ name: String, _ times: Int) -> String {
    var result: String = ""
    
    for _ in 0..<times {
        result += "Hello \(name)! "
    }
    
    return result
}

print(sayHello("chope", 2))
print()

func sayHelloToFriends(me: String, friends names: String...) -> String {
    var result: String = ""
    for friend in names {
        result += "Hello \(friend)! "
    }
    
    result += "I`m \(me)!"
    return result
}
print(sayHelloToFriends(me: "yongki", friends: "Jessy", "Jay", "John"))
print(sayHelloToFriends(me: "yongki"))
print()

var numbers: [Int] = [1, 2, 3]

func nonRefereceParameter(_ arr: [Int]) {
    var copiedArr: [Int] = arr
    copiedArr[1] = 1
}

func referenceParamter(_ arr: inout [Int]) {
    arr[1] = 1
}

nonRefereceParameter(numbers)
print(numbers[1])
referenceParamter(&numbers)
print(numbers[1])
print()

func sayHelloWorld() {
    print("Hello World")
}
sayHelloWorld()

func sayHello(from myName: String, to name: String) {
    print("Hello \(name)! I`m \(myName)")
}
sayHello(from: "hyemi", to: "yongki")

func sayGoodBye() -> Void {
    print("Good Bye")
}
sayGoodBye()

typealias CalculateTwoInts = (Int, Int) -> Int

func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}
func multipleTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}

var mathFunction: CalculateTwoInts = addTwoInts
print(mathFunction(2, 5))
mathFunction = multipleTwoInts
print(mathFunction(2, 5))

func printMathResult(_ mathFunction: CalculateTwoInts, _ a: Int, _ b: Int) {
    print("Result \(mathFunction(a, b))")
}

printMathResult(addTwoInts, 3, 5)
printMathResult(multipleTwoInts, 3, 5)
print()

func chooseMathFunction(_ toAdd: Bool) -> CalculateTwoInts {
    return toAdd ? addTwoInts : multipleTwoInts
}
printMathResult(chooseMathFunction(true), 3, 5)
printMathResult(chooseMathFunction(false), 3, 5)
print()

typealias MoveFunc = (Int) -> Int

func goRight(_ currentPosition: Int) -> Int {
    return currentPosition + 1
}

func goLeft(_ currentPosition: Int) -> Int {
    return currentPosition - 1
}

func functionForMove(_ shouldGoLeft: Bool) -> MoveFunc {
    return shouldGoLeft ? goLeft : goRight
}

var position: Int = 3

let moveToZero: MoveFunc = functionForMove(position > 0)
print("원점으로 갑시다")

while position != 0 {
    print("\(position)")
    position = moveToZero(position)
}
print("원점 도착!")
print()

typealias MoveFunc2 = (Int) -> Int

func functionForMove2(_ shouldGoLeft: Bool) -> MoveFunc2 {
    func goRight(_ currenPosition: Int) -> Int {
        return currenPosition + 1
    }
    
    func goLeft(_ currentPosition: Int) -> Int {
        return currentPosition - 1
    }
    
    return shouldGoLeft ? goLeft : goRight
}

var position2: Int = -4
var moveToZero2: MoveFunc2 = functionForMove2(position2 > 0)

print("원점으로 갑시다")
while position2 != 0 {
    print("\(position2)")
    position2 = moveToZero2(position2)
}
print("원점 도착")

position2 = 4
moveToZero2 = functionForMove2(position2 > 0)
print("원점으로 갑시다")
while position2 != 0 {
    print("\(position2)")
    position2 = moveToZero2(position2)
}
print("원점 도착")
print()

///비반환함수
func crashAndBurn() -> Never {
    fatalError("Something very, very bad happened")
}

//crashAndBurn() //프로세스 종료 후 오류보고

func someFunction(isAllIsWell: Bool) {
    guard isAllIsWell else {
        print("마을에 도둑이 들었다")
        crashAndBurn()
    }
    print("All is well")
}

someFunction(isAllIsWell: true)
//someFunction(isAllIsWell: false)
print()

func say(_ something: String) -> String {
    print(something)
    return something
}

//반환값을 사용하지 않을 수 있다고 미리 알리는 것. @discardableResult
@discardableResult func discardableResultSay(_ something: String) -> String {
    print(something)
    return something
}

say("hello")
discardableResultSay("Hello")
