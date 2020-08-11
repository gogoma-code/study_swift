import SwiftUI

let items: Array<Int> = [1, 2, 3, 4, 5, 6]

print(items.map { return $0 * 10 })
print(items.filter { $0 % 2 == 0 })
print(items.reduce(0, {$0 + $1}))
print(items.reduce("") { $0 + "\($1) " })
print()


protocol SelfPrintable {
    func printSelf()
}

extension SelfPrintable {
    func printSelf() {
        print(self)
    }
}

extension Int: SelfPrintable { }
extension String: SelfPrintable { }
extension Double: SelfPrintable { }

1024.printSelf()
3.14.printSelf()
"yongki".printSelf()
