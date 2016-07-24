//: Creational Pattern
/* 
    - Prototype
    - Factory method
    - Abstract factory
    - Singleton
    - Builder
*/

//: Prototype Pattern
/*
This pattern will help you create new object by duplicating and cloning capability.
*/

//: Implementation
class SmartPhonePrototype {
    var name: String
    var price: Int
    var brand: String
    
    init(name: String, price: Int, brand: String) {
        self.name = name
        self.price = price
        self.brand = brand
    }
    
    func clone() -> SmartPhonePrototype {
        return SmartPhonePrototype(name: self.name, price: self.price, brand: self.brand)
    }
}

class SmartPhone: SmartPhonePrototype {
    override init(name: String, price: Int, brand: String) {
        super.init(name: name, price: price, brand: brand)
    }
}

//: Usage
let iPhone6 = SmartPhone(name: "iPhone 6", price: 649, brand: "Apple")

let aaaiPhone6 = iPhone6.clone()

aaaiPhone6.name
aaaiPhone6.price
aaaiPhone6.brand


