import Foundation

class Person {
    var name: String = ""
    var age: Int = 0
    
    var koreanAge: Int {
        get {
            return self.age + 1
        }
        
        set {
            self.koreanAge = newValue
        }
    }
    
    var introduction: String {
        return "이름 : \(name), 나이: \(age)"
    }
    
    func speak() {
        print("가나다라마바사")
    }
}

let yongki: Person = Person()
yongki.name = "yongki"
yongki.age = 99
print(yongki.introduction)
yongki.speak()
print()

class Student: Person {
    var grade: String = "F"
    
    override var koreanAge: Int {
        get {
            return super.koreanAge
        }
        
        set {
            self.age = newValue - 1
        }
    }
    
    func study() {
        print("study hard...")
    }
    
    override func speak() {
        print("에베베베")
    }
}

let hyemi: Student = Student()
hyemi.name = "hyemi"
hyemi.age = 10
hyemi.grade = "A"
print(hyemi.introduction)
hyemi.speak()
hyemi.study()
print()

class UniversityStudent: Student {
    var major: String = ""
}

let jenny: UniversityStudent = UniversityStudent()
jenny.major = "Art"
jenny.speak()
jenny.study()
print()
