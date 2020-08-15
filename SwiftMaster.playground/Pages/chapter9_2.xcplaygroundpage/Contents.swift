import Foundation

struct BasicInformation {
    let name: String
    var age: Int
}

var yongkiInfo: BasicInformation = BasicInformation(name: "yongki", age: 29)
yongkiInfo.age = 100

var friendInfo: BasicInformation = yongkiInfo
yongkiInfo.age
friendInfo.age

friendInfo.age = 99
yongkiInfo.age
friendInfo.age

class Person {
    var height: Float = 0.0
    var weight: Float = 0.0
}

var yongki: Person = Person()
var friend: Person = yongki

yongki.height
friend.height

friend.height = 180.5

yongki.height
friend.height

func changeBasicInfo(_ info: BasicInformation) {
    var copiedInfo: BasicInformation = info
    copiedInfo.age = 1
}

func changePersonInfo(_ info: Person) {
    info.height = 155.3
}

changeBasicInfo(yongkiInfo)
yongkiInfo.age
friendInfo.age

changePersonInfo(yongki)
yongki.height
friend.height


var yongki2: Person = Person()
let friend2: Person = yongki2
let anotherFriend: Person = Person()

yongki2 === friend2
yongki2 === anotherFriend
friend !== anotherFriend
