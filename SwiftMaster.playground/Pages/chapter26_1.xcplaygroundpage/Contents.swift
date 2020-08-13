import SwiftUI

protocol SelfPrintable {
    func printSelf()
}

struct Person: SelfPrintable { }
extension Int: SelfPrintable { }
extension UInt: SelfPrintable { }
extension String: SelfPrintable { }
extension Double: SelfPrintable { }

extension SelfPrintable where Self: FixedWidthInteger, Self: SignedInteger {
    func printSelf() {
        print("fix, signed, self \(type(of: self))")
    }
}

extension SelfPrintable where Self: CustomStringConvertible {
    func printSelf() {
        print("cut, self \(type(of: self))")
    }
}

extension SelfPrintable {
    func printSelf() {
        print("그 외 \(type(of: self))")
    }
}

Int(-8).printSelf()
UInt(8).printSelf()
"yongki".printSelf()
8.0.printSelf()
Person().printSelf()
print()


func doubled<T>(integerValue: T) -> T where T: BinaryInteger {
    return integerValue * 2
}
/* 위와 같은 표현
func doubled<T: BinaryInteger>(integerValue: T) -> T {
    return integerValue * 2
}
*/

func prints<T, U>(first: T, second: U) where T: CustomStringConvertible, U: CustomStringConvertible {
    print("first: \(first), second: \(second)")
}

/* 위와 같은 표현
func prints<T: CustomStringConvertible, U:CustomStringConvertible>(first: T, second: U) {
    print("first: \(first), second: \(second)")
}
*/

func compareTwoSequences<S1, S2>(a: S1, b: S2) where S1: Sequence, S2: Sequence, S1.Element:Equatable, S1.Element == S2.Element {
    
}
/* 위와 같은 표현
func compareTwoSequences<S1: Sequence, S2:Sequence>(a: S1, b: S2) where S1.Element: Equatable, S1.Element == S2.Iterator.Element {
    
}
 */

protocol Container {
    associatedtype ItemType where ItemType: BinaryInteger
    var count: Int { get }
    
    mutating func append(_ item: ItemType)
    subscript(i: Int) -> ItemType { get }
}
/*  위와 같은 표현
protocol Container where ItemType: BinaryInteger {
    associatedtype ItemType
    var count: Int { get }
    
    mutating func append(_ item: ItemType)
    subscript(i: Int) -> ItemType { get }
}
*/
