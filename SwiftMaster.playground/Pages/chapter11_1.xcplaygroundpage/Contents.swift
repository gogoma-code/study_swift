import Foundation

enum Student: String {
    case elementary = "초딩", middle = "중딩", high = "고딩"
    
    init?(koreanAge: Int) {
        switch koreanAge {
        case 8...13:
            self = .elementary
        case 14...16:
            self = .middle
        case 17...19:
            self = .high
        default:
            return nil
        }
    }
    
    init?(bornAt: Int, currentYear: Int) {
        self.init(koreanAge: currentYear - bornAt + 1)
    }
}

var younger: Student? = Student(koreanAge: 20)
print(younger)

younger = Student(bornAt: 2020, currentYear: 2016)
print(younger)

younger = Student(rawValue: "대딩")
print(younger)

younger = Student(rawValue: "고딩")
print(younger?.rawValue)


struct Student2 {
    var name: String?
    var number: Int?
}

class SchoolClass {
    var students: [Student2] = {
        var arr: [Student2] = [Student2]()
        
        for num in 1...15 {
            var student: Student2 = Student2(name: nil, number: num)
            arr.append(student)
        }
        
        return arr
    }()
}

let myClass: SchoolClass = SchoolClass()
print(myClass.students[0].name)
print(myClass.students[0].number!)
print(myClass.students.count)
print()

class SomeClass {
    deinit {
        print("instance will be deallocated immediately")
    }
}

var instance: SomeClass? = SomeClass()
print("시점확인1")
instance = nil
print("시점확인2")
print()

class FileManager {
    var fileName: String
    
    init(fileName: String) {
        self.fileName = fileName
    }
    
    func openFile() {
        print("Open File: \(self.fileName)")
    }
    
    func modifyFile() {
        print("Modify File: \(self.fileName)")
    }
    
    func writeFile() {
        print("Write File: \(self.fileName)")
    }
    
    func closeFile() {
        print("Close File: \(self.fileName)")
    }
    
    deinit {
        print("Deinit instance")
        self.writeFile()
        self.closeFile()
    }
}

var fileManager: FileManager? = FileManager(fileName: "abc.txt")
if let manager: FileManager = fileManager {
    manager.openFile()
    manager.modifyFile()
}

fileManager = nil
