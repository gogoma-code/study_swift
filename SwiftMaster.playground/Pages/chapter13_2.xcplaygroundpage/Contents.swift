import SwiftUI

var customersInLine: [String] = ["111", "222", "333", "444"]
print(customersInLine.count)

let customerProvider: () -> String = {
    return customersInLine.removeFirst()
}
print(customersInLine.count)

print(1, customerProvider())
print(customersInLine.count)
print()

customersInLine = ["111", "222", "333", "444"]
print(customersInLine.count)
func serveCustomer(_ customerProvider: () -> String) {
    print(2, customerProvider())
}

serveCustomer({customersInLine.removeFirst()})
print(customersInLine.count)
print()

customersInLine = ["111", "222", "333", "444"]
func serve(_ customerProvider: @autoclosure () -> String) {
    print(3, customerProvider())
}

serve(customersInLine.removeFirst())
print()

customersInLine = ["111", "222", "333", "444"]
func returnProvider(_ customerProvider: @autoclosure @escaping () -> String) -> (() -> String) {
    return customerProvider
}

let customerProvider2: () -> String = returnProvider(customersInLine.removeFirst())
print(4, customerProvider2())

