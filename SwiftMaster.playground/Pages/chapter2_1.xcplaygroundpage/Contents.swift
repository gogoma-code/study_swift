import Swift

var name: String = "yongki"
var age: Int = 100
var job = "IOS Programmer"
var height = 181.5
print("\(type(of: height))") //Double
age = 99
job = "Writer"
print("저의 이믈은 \(name)이고, 나이는 \(age)세이며, 직업은 \(job)입니다. 비밀이지만 키는 \(height)cm 입니다.")
print("test")

/*
let name: String = "yongki"
var age: Int = 100
var job = "IOS Programmer" //타입추론
age = 99
//name = "leeyongki" //상수로 선언된 값은 변경될 수 없다.
*/

