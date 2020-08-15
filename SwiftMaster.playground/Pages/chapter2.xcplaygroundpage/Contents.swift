import Foundation

struct BasicInformation {
    let name: String
    var age: Int
}

var yongkiInfo: BasicInformation = BasicInformation(name: "yongki", age: 99)

class Person {
    var height: Float = 0.0
    var weight: Float = 0.0
}

let yongki: Person = Person()
yongki.height = 170
yongki.weight = 60

print(yongkiInfo)
dump(yongkiInfo)

print(yongki)
dump(yongki)

let name: String = "yongki"
print("My name is \(name)")

//한 줄 주석
/*
 여러 줄 주석
 */

/*
 /*
 여러 줄 안에
 */
 //한 줄 주석
 주석
 */

/// 오류 타입의 열거형
/// - noName: 이름을 전달받지 못했을 때 발생하는 오류
/// - incorrectAge(age: Int): 나이가 0세 미만, 150세 초과인 경우 잘못된 나이로 인식하여 오류로 처리
/// - unknown: 알 수 없는 오류
enum HelloError: Error {
    case noName
    case incorrectAge(age: Int)
    case unknown
}

