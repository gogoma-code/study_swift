import Foundation

struct BasicInformation {
    var name: String
    var age: Int
}

var yongkiInfo: BasicInformation = BasicInformation(name: "yongki", age: 29)
print(yongkiInfo)
yongkiInfo.name = "yong"
yongkiInfo.age = 100
print(yongkiInfo)
let sebaInfo: BasicInformation = BasicInformation(name: "seba", age: 99)
print(sebaInfo)
//sebaInfo.age = 100
