//Methods
//In Swift, methods are functions associated with a specific type. These types; can be classes, structs, or enums.

//Instance Methods
//It used to access properties of an instance or perfom operations related to the instance.
class Counter {
    var count = 0
    
    func increment() {
        count += 1
    }
    
    func increment(by amount: Int) {
        count += amount
    }
    
    func reset() {
        count = 0
    }
}

let counter = Counter()
counter.increment() // count is now 1
counter.increment(by: 5) // count is now 6
counter.reset() // count is now 0

//Value Types and Mutating Methods
//Mutating methods are used to modify the instance and its properties. They are only available for structs and enums.
//A constant(let) cannot be called on an intance. A new value can be assigned to self.
struct Point {
    var x = 0.0, y = 0.0
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        x += deltaX
        y += deltaY
    }
}

var somePoint = Point (x: 1.0, y: 1.0)
somePoint.moveBy(x: 2.0, y: 3.0) //new somePoint (3.0, 4.0)

//Type Methods
//Struct
struct MathUtility {
    static func square(_ number: Int) -> Int {
        return number * number
    }
} 

let result = MathUtility.square(5) // 25
//It was called from the type itself, witout creating an instance of MathUtility to call the method.
print(result)

//Class
class Vehicle {
    static var count = 0

    static func incrementCount() {
        count += 1
    }
}

Vehicle.incrementCount()
Vehicle.incrementCount()
//The method increments the class-level count value by calling it directly without creating an instance.
print(Vehicle.count) // 2
