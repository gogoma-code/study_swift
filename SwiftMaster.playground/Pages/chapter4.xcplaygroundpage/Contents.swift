import Foundation

typealias MyInt = Int
typealias YourInt = Int
typealias MyDouble = Double

let age: MyInt = 100
var year: YourInt = 2000
year = age
let percentage: MyDouble = 99.9

var person: (String, Int, Double) = ("yagon", 100, 182.5)
print(person)
print(person.0)
print(person.1)
print(person.2)
print()

typealias PersonTuple = (name: String, age: Int, height: Double)

let yagom: PersonTuple = ("yagom", 100, 178.5)
print(yagom)
print("이름: \(yagom.name), 나이: \(yagom.age), 신장: \(yagom.height)")
print()

var names: Array<String> = ["yagom", "chulsoo", "yagom"]
//[String] == Array<String>
var emptyArray: [Any] = [Any]()
var emptyArray2: [Any] = Array<Any>()

print(emptyArray.isEmpty)
print(names.count)

typealias  StringIntDictionary = [String: Int]
var numberForName: Dictionary<String, Int> = Dictionary<String, Int>()
var numberForName2: [String:Int] = [String: Int]()
var numberForName3: StringIntDictionary = StringIntDictionary()
var numberForName4: [String: Int] = [:]
var numberForName5: [String: Int] = ["yagom": 100, "chulsoo": 200, "jenny": 300]
print(numberForName5)
print()

print(numberForName5["yagom"]!)
numberForName5["max"] = 999
print(numberForName5["max"]!)

print(numberForName5.removeValue(forKey: "yagom")!)
print(numberForName5.removeValue(forKey: "yagom"))
print(numberForName5["yagom", default: 0])
print()

var setNames: Set<String> = Set<String>()
//SEt<String = []
var setNames2: Set<String> = ["yagom", "chulsoo", "younghee", "yagom"]

var numbers = [100, 200, 300]
print(type(of: numbers))

print(setNames2.isEmpty)
print(setNames2.count)
print()

setNames2.insert("jenny")
print(setNames2.count)
print(setNames2.remove("chulsoo")!)
print(setNames2.remove("john"))
print()

let english: Set<String> = ["john", "chulsoo", "yagom"]
let korean: Set<String> = ["jenny", "yagom", "chulsoo"]

///교집합
let intersectSet: Set<String> = english.intersection(korean)
print(intersectSet)
///여집합의 합(배타적 논리합)
let symmetricDiffSet: Set<String> = english.symmetricDifference(korean)
print(symmetricDiffSet)
///합집합
let unionSet: Set<String> = english.union(korean)
print(unionSet)
let subtractSet: Set<String> = english.subtracting(korean)
print(subtractSet)
print()

let 새: Set<String> = ["비둘기", "닭", "기러기"]
let 포유류: Set<String> = ["사자", "호랑이", "곰"]
let 동물: Set<String> = 새.union(포유류)

print(새.isDisjoint(with: 포유류)) //서로 배타적인가?
print(새.isSubset(of: 동물)) //새가 동물의 부분집합?
print(새.isSubset(of: 포유류)) //새는 포유류의 부분집합?
print(동물.isSuperset(of: 포유류)) //동물은 포유류의 전체집합?
print(동물.isSuperset(of: 새)) //동물은 새의 전체집합?

