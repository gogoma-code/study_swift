import SwiftUI

protocol Receiveable {
    func received(data: Any, from: Sendable)
}

protocol Sendable {
    var from: Sendable { get }
    var to: Receiveable? { get }
    
    func send(data: Any)
    
    static func isSendableInstance(_ instance: Any) -> Bool
}

class Message: Sendable, Receiveable {
    var from: Sendable {
        return self
    }
    var to: Receiveable?
    
    func send(data: Any) {
        guard let receiver: Receiveable = self.to else {
            print("Message has no receiver")
            return
        }
        receiver.received(data: data, from: self.from)
    }
    
    func received(data: Any, from: Sendable) {
        print("Message received \(data) from \(from)")
    }
    
    static func isSendableInstance(_ instance: Any) -> Bool {
        if let sendableInstance: Sendable = instance as? Sendable {
            return sendableInstance.to != nil
        }
        return false
    }
}

class Mail: Sendable, Receiveable {
    var from: Sendable {
        return self
    }
    var to: Receiveable?
    
    func send(data: Any) {
        guard let receiver: Receiveable = self.to else {
            print("Mail has no receiver")
            return
        }
        receiver.received(data: data, from: self.from)
    }
    
    func received(data: Any, from: Sendable) {
        print("Mail received \(data) from \(from)")
    }
    
    static func isSendableInstance(_ instance: Any) -> Bool {
        if let sendableInstance: Sendable = instance as? Sendable {
            return sendableInstance.to != nil
        }
        return false
    }
}

let myPhoneMessage: Message = Message()
let uPhoneMessage: Message = Message()

myPhoneMessage.send(data: "Hello")

myPhoneMessage.to = uPhoneMessage
myPhoneMessage.send(data: "Hello")
print()

let myMail: Mail = Mail()
let uMail: Mail = Mail()

myMail.send(data: "Hi")
myMail.to = uMail
myMail.send(data: "Hi")

myMail.to = myPhoneMessage
myMail.send(data: "Bye")

Message.isSendableInstance("Hello") // false
Message.isSendableInstance(myPhoneMessage) // true

Message.isSendableInstance(uPhoneMessage) // false, uPhoneMessage 는 to property가 설정되어있지 않음
Mail.isSendableInstance(myPhoneMessage) // true, protocol 준수
Mail.isSendableInstance(myMail) // true, protocol 준수

