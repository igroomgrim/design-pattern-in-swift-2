# Design Pattern in Swift 2
Knowledge &amp; Playground for design pattern in Swift 2

## Objective
* Learn about design pattern 
* Teach my self for software architecture
* Want to write better code

## Creational Pattern
>In software engineering, creational design patterns are design patterns that deal with object creation mechanisms, trying to create objects in a manner suitable to the situation. The basic form of object creation could result in design problems or in added complexity to the design. Creational design patterns solve this problem by somehow controlling this object creation.

>Creational design patterns are composed of two dominant ideas. One is encapsulating knowledge about which concrete classes the system uses. Another is hiding how instances of these concrete classes are created and combined.[1]

>Creational design patterns are further categorized into Object-creational patterns and Class-creational patterns, where Object-creational patterns deal with Object creation and Class-creational patterns deal with Class-instantiation. In greater details, Object-creational patterns defer part of its object creation to another object, while Class-creational patterns defer its object creation to subclasses.
>
>**Source:** [wikipedia.org](https://en.wikipedia.org/wiki/Creational_pattern)

## Part of Creational Pattern
* Prototype pattern
* Factory method pattern
* Abstract factory pattern 
* Singleton pattern
* Builder pattern

## Prototype pattern
>This pattern will help you create new object by duplicating and cloning capability from this prototype.

### Use cases
>It is used when the type of objects to create is determined by a prototypical instance, which is cloned to produce new objects. This pattern is used to:
* avoid subclasses of an object creator in the client application, like the abstract factory pattern does.
* avoid the inherent cost of creating a new object in the standard way (e.g., using the 'new' keyword) when it is prohibitively expensive for a given application.
* 
>To implement the pattern, declare an abstract base class that specifies a pure virtual clone() method. Any class that needs a "polymorphic constructor" capability derives itself from the abstract base class, and implements the clone() operation.
>
>**Source:** [wikipedia.org](https://en.wikipedia.org/wiki/Prototype_pattern)

### Implementation
```swift
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
```

### Usage
```swift
let iPhone6 = SmartPhone(name: "iPhone 6", price: 649, brand: "Apple")

let aaaiPhone6 = iPhone6.clone()

aaaiPhone6.name   // "iPhone 6"
aaaiPhone6.price  // 649
aaaiPhone6.brand  // "Apple"
```

## To Be Continued ...つづく

## Contact Me

Anak Mirasing

- https://github.com/igroomgrim
- https://www.linkedin.com/in/anakmirasing
- https://twitter.com/igroomgrim
- http://www.igroomgrim.com/
- thaihooligan@hotmail.com
