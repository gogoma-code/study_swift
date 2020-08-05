import SwiftUI

/*
for 임시 상수 in 시퀀스 아이템 {
    실행 코드
}
*/

for i in 0...2 {
    print(i)
}
print()

for i in 0...5 {
    if i.isMultiple(of: 2) {
        print(i)
        continue
    }
    
    print("\(i) == 홀수")
}
print()

let helloSwift: String = "Hello Swift!"
for char in helloSwift {
    print(char)
}
print()

var int1: Int = 1

for _ in 1...3 {
    int1 *= 10
}
print(int1)
print()


let friends: [String: Int] = ["Jay": 35, "Joe": 29, "Jenny": 31]

for tuple in friends {
    print(tuple)
}
print()

let 주소: [String: String] = ["도": "충청북도", "시군구": "청주시, 청원구", "동읍면": "율량동"]
print(주소)
for(key, val) in 주소 {
    print("\(key), \(val)")
}
print()

let 지역번호: Set<String> = ["02", "031", "033", "035", "036", "999"]
for 번호 in 지역번호 {
    print(번호)
}
print()

var names: [String] = ["joker", "Jenny", "Nova", "yagom"]
while names.isEmpty == false {
    print("bye, \(names.removeFirst())")
}
print()

names = ["joker", "Jenny", "Nova", "yagom"]
repeat {
    print("bye, \(names.removeFirst())")
} while names.isEmpty == false
print()

var numbers: [Int] = [3, 2342, 6, 3252]
numbersLoop: for num in numbers {
    if (num > 5 || num < 1) {
        continue numbersLoop
    }
    
    var count: Int = 0
    printLoop: while true {
        print(num)
        count += 1
        
        if (count == num) {
            break printLoop
        }
    }
    
    removeLoop: while true {
        if numbers.first != num {
            break numbersLoop
        }
        numbers.removeFirst()
    }
}
print(numbers)
