import Foundation

enum PastaTaste: CaseIterable {
    case cream, tomato
}

enum PizzaDough: CaseIterable {
    case cheeseCrust, thin, original
}

enum PizzaTopping: CaseIterable {
    case pepperoni, cheese, bacon
}

enum MainDish: CaseIterable {
    case pasta(taste: PastaTaste)
    case pizza(dough: PizzaDough, topping:PizzaTopping)
    case chiken(withSauce: Bool)
    case rice
    
    static var allCases: [MainDish] {
        return PastaTaste.allCases.map(MainDish.pasta) + PizzaDough.allCases.reduce([]) { (result, dough) -> [MainDish] in result + PizzaTopping.allCases.map { (topping) -> MainDish in MainDish.pizza(dough: dough, topping: topping)}
            + [true, false].map(MainDish.chiken)
            + [MainDish.rice]
        }
    }
}

print(MainDish.allCases.count)
print(MainDish.allCases)


enum ArithmeticExpression {
    case number(Int)
    indirect case addition(ArithmeticExpression, ArithmeticExpression)
    indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
}

indirect enum ArithmeticExpression2 {
    case number(Int)
    case addition(ArithmeticExpression2, ArithmeticExpression2)
    case multiplication(ArithmeticExpression2, ArithmeticExpression2)
}

let five = ArithmeticExpression2.number(5)
let four = ArithmeticExpression2.number(4)
let sum = ArithmeticExpression2.addition(five, four)
let final = ArithmeticExpression2.multiplication(sum, ArithmeticExpression2.number(2))
print("five: \(five), four: \(four), sum: \(sum), final: \(final)")

func evaluate(_ expression: ArithmeticExpression2) -> Int {
    switch expression {
    case .number(let value):
        return value
    case .addition(let left, let right):
        return evaluate(left) + evaluate(right)
    case .multiplication(let left, let right):
        return evaluate(left) * evaluate(right)
    }
}

let result: Int = evaluate(final)
print("(5 + 4) * 2 = \(result)")
