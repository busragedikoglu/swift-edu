//Inheritance
//Inheritance is a mechanism that allows a class to inherit properties, methods, and other features from anothor class.
//Subclass can access all the properties and methods of a superclass.
//Properties and methos of Superclass can override in Subclass.

//Base Class
class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "Traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {}
}

let someVehicle = Vehicle()
print(someVehicle.description)  // Traveling at 0.0 miles per hour

//Subclass
class Bicycle: Vehicle {
    var hasBasket = false
}

let bicycle = Bicycle()
bicycle.hasBasket = true
bicycle.currentSpeed = 15.0
print(bicycle.description)  // Traveling at 15.0 miles per hour

class Tandem: Bicycle {
    var currentNumberOfPassengers = 0
}

//Overriding
//A subclass can redefine properties or methods defined in the superclass. This is known as overriding.
class Train: Vehicle {
    override func makeNoise() {
        print("Choo Choo")
    }
}

let train = Train()
train.makeNoise()  // Choo Choo

//When redefining a property or method in a subclass, the original version in the superclass can be accessed with the super keyword.

//Property Getter and Setter
//Subclass can override the getter and setter of a property inherited from a superclass.
class Car: Vehicle {
    var gear = 1
    override var description: String {
        return super.description + " in gear \(gear)"
    }
}

let car = Car()
car.currentSpeed = 25.0
car.gear = 3
print(car.description)  // Traveling at 25.0 miles per hour in gear 3

//Property Observer
//Observes(willSet, didSet) can be added to monitor changes in the value of a property.

class AutomaticCar: Car {
    override var currentSpeed: Double {
        didSet {
            gear = Int(currentSpeed / 10.0) + 1
        }
    }
}

let automatic = AutomaticCar()
automatic.currentSpeed = 35.0
print(automatic.description)  // Traveling at 35.0 miles per hour in gear 4

//Final keyword
//Final keyword is used to prevent a property, method, or class from being redifined.
final class FinalClass {
    var speed = 0.0
} // This class cannot be inherited.