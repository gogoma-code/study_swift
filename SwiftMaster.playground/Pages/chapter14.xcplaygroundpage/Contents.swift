import Foundation

class Room {
    var number: Int
    
    init(number: Int) {
        self.number = number
    }
}

class Building {
    var name: String
    var room: Room?
    
    init(name: String) {
        self.name = name
    }
}

struct Address {
    var province: String
    var city: String
    var street: String
    var building: Building?
    var detailAddress: String?
}

class Person {
    var name: String
    var address: Address?
    
    init(name: String) {
        self.name = name
    }
}

let yongki: Person = Person(name: "yongki")
let yongkiRoomViaOptionalChaining: Int? = yongki.address?.building?.room?.number
//let yongkiRoomViaOptionalUnwraping: Int = yongki.address?.building?.room?.number // error

var roomNumber: Int? = nil
if let yongkiAddress: Address = yongki.address {
    if let yongkiBuilding: Building = yongkiAddress.building {
        if let yongkiRoom: Room = yongkiBuilding.room {
            roomNumber = yongkiRoom.number
        }
    }
}

if let number: Int = roomNumber {
    print(number)
} else {
    print("number is nil")
}
print()

if let roomNum: Int = yongki.address?.building?.room?.number {
    print(roomNum)
} else {
    print("roomNum is nil")
}
print()

yongki.address?.building?.room?.number = 505
print(yongki.address?.building?.room?.number)

yongki.address = Address(province: "서울특별시", city: "노원구", street: "상계로", building: nil, detailAddress: nil)
yongki.address?.building = Building(name: "곰굴")
yongki.address?.building?.room = Room(number: 510)
print(yongki.address?.building?.room?.number)
if let roomNum: Int = yongki.address?.building?.room?.number {
    print(roomNum)
} else {
    print("roomNum is nil")
}
print()
print()


struct Address2 {
    var province: String
    var city: String
    var street: String
    var building: Building?
    var detailAddress: String?
    
    init(province: String, city: String, street: String) {
        self.province = province
        self.city = city
        self.street = street
    }
    
    func fullAddress() -> String? {
        var restAddress: String? = nil
        
        if let buildingInfo: Building = self.building {
            restAddress = buildingInfo.name
        } else if let detail = self.detailAddress {
            restAddress = detail
        }
        
        if let rest: String = restAddress {
            var fullAddress: String = self.province
            fullAddress += " " + self.city
            fullAddress += " " + self.street
            fullAddress += " " + rest
            
            return fullAddress
        } else {
            return nil
        }
    }
    
    func printAddress() {
        if let address: String = self.fullAddress() {
            print(address)
        }
    }
}

class Person2 {
    var name: String
    var address: Address2?
    
    init(name: String) {
        self.name = name
    }
}


let yongki2: Person2 = Person2(name: "yongki")
yongki2.address?.fullAddress()?.isEmpty
yongki2.address?.printAddress()

yongki2.address = Address2(province: "서울특별시", city: "노원구", street: "상계로")
yongki2.address?.building = Building(name: "곰굴")
yongki2.address?.building?.room = Room(number: 510)

yongki2.address?.fullAddress()?.isEmpty
yongki2.address?.printAddress()
print()

let optionalAry: [Int]? = [1, 2, 3]
optionalAry?[1]

var optionalDictionary: [String: [Int]]? = [String: [Int]]()
optionalDictionary?["numberAry"] = optionalAry
optionalDictionary //(key "numberAry", [1, 2, 3])
optionalDictionary?["numberAry"] // [1, 2, 3]
optionalDictionary?["numberAry"]?[2] // 3

