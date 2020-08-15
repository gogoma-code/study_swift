import Foundation

typealias VoidClosure = () -> Void

func func1(closure: VoidClosure) {
    closure()
}

func func2(completionHandler: @escaping VoidClosure) -> VoidClosure {
    return completionHandler
}

class SomeClass {
    var x: Int = 10
    
    func runNoescapeClosure() {
        func1 {
            x = 200
        }
    }
    func runEscapingClosure() -> VoidClosure {
        return func2 {
            self.x = 100
        }
    }
}

let inst: SomeClass = SomeClass()
inst.runNoescapeClosure()
print(inst.x)

let returnedClosure: VoidClosure = inst.runEscapingClosure()
returnedClosure()
print(inst.x)
print()

let numbers: [Int] = [2, 4, 6, 8]

let evenNumberPerdicate = { (number: Int) -> Bool in
    return number % 2 == 0
}

let oddNumberPredicate = { (number: Int) -> Bool in
    return number % 2 == 1
}

print(numbers.lazy.filter { _ in true })

func hasElements(in array: [Int], match predicate: (Int) -> Bool) -> Bool {
    return withoutActuallyEscaping(predicate, do: {
        //escapablePredicate in return (array.lazy.filter {escapablePredicate($0)}.isEmpty == false)
        escapablePredicate in array.lazy.filter {
            !escapablePredicate($0)
        }.isEmpty
    })
}

let hasEvenNumber = hasElements(in: numbers, match: evenNumberPerdicate)
let hasOddNumber = hasElements(in: numbers, match: oddNumberPredicate)

print(hasEvenNumber)
print(hasOddNumber)

