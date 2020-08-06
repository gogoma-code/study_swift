import SwiftUI

struct LevelStruct {
    var level: Int = 0
    
    mutating func levelUp() {
        print("Level Up")
        level += 1
    }
    
    mutating func reset() {
        print("Reset")
        print(self)
        self = LevelStruct()
        print(self)
    }
}

var level: LevelStruct = LevelStruct()
level.levelUp()
print(level.level)
level.reset()
print(level.level)
print()

class AClass {
    static func staticTypeMethod() {
        print("AClass staticTypeMethod")
    }
    
    class func classTypeMethod() {
        print("AClass classTypeMethod")
    }
}

class BClass: AClass {
    /*
    //오류 재정의 불가
    override static func staticTypeMethod() {
        
    }
     */
    override class func classTypeMethod() {
        print("BClass classTypeMethod")
    }
}

AClass.staticTypeMethod()
AClass.classTypeMethod()
BClass.staticTypeMethod()
BClass.classTypeMethod()
print()

struct SystemVolume {
    /// - SystemVolume volume
    static var volume: Int = 5
    
    static func mute() {
        self.volume = 0
    }
}

class Navigation {
    /// - navigation volume
    var volume: Int = 5
    
    func guideWay() {
        SystemVolume.mute()
    }
    
    func finishGuideWay() {
        SystemVolume.volume = self.volume
    }
}

SystemVolume.volume = 10
let navi: Navigation = Navigation()

navi.guideWay()
print(SystemVolume.volume)

navi.finishGuideWay()
print(SystemVolume.volume)
