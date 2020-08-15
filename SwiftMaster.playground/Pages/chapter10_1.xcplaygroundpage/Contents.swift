import Foundation

class Account {
    var credit: Int = 0 {
        
        //프로퍼티가 변경되기 전에 실행
        willSet {
            print("잔액이 \(credit)원에서 \(newValue)원으로 변경될 예정입니다.")
        }
        
        //프로퍼티가 변경된 후 실행
        didSet {
            print("잔액이 \(oldValue)원에서 \(credit)원으로 변경되었습니다.")
        }
    }
}
let myAccount: Account = Account()
myAccount.credit = 1000


