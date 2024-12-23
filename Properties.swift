//Properties
//In Swift, properties are used to store values inside a class, struct, or enum.
//They are classified into three manin types:
//Stored Properties - store constant or variable values as part of an instance.
//Computed Properties - calculate a value dynamically instead of storing it.
//Property Observers - observe and respond to changes in a property's value.

struct Rectangle {
    //Stored Properties
    var width: Double
    var height: Double
    //These can be constants if the struct is declared as a constant.

    //Computed Properties
    var area: Double {
        return width * height
    }

    //Property Observers
    var perimeter: Double {
        willSet {
            print("Perimeter will change to \(newValue)")
        }
        didSet {
            print("Perimeter changed from \(oldValue) to \(perimeter)")
        }
    }
}

//Create an instance of Rectangle
var rectangle = Rectangle(width: 5, height: 10, perimeter: 30)
print("Area: \(rectangle.area)")  // 50
//Change perimeter
rectangle.perimeter = 40

//Lazy Stored Properties
//A lazy stored property doesn’t get initialized until it’s accessed for the first time. Useful when initialization is expensive or depends on external factors.
struct DataLoader {
    lazy var data: [Int] = {
        print("Data loading...")
        return [1, 2, 3, 4, 5]
    }()
}

var loader = DataLoader()
print("Before accessing data")
print(loader.data)  // First access: Data loading... [1, 2, 3, 4, 5]

//Shorthand Setter Declaration
//A setter can be written in a shorthand format within computed properties.
struct Circle {
    var radius: Double = 0
    var diameter: Double {
        get { radius * 2 }
        set { radius = newValue / 2 }
    }
}

var circle = Circle()
circle.diameter = 10
print(circle.radius)

//Read-Only Computed Properties
//Computed properties that only return a value are called read-only properties.
struct Triangle {
    var base: Double
    var height: Double
    var area: Double { (base * height) / 2 }  // Read-only
}

let triangle = Triangle(base: 4, height: 6)
print(triangle.area)  // 12.0

//Property Wrappers
//Property wrappers encapsulate logic around property storage. Commonly used for tasks like validation or transformation.
//Thanks to this structere, its features will not be controlled manually and will provide flexibility within a certain range.
@propertyWrapper
struct Clamped {
    private var value: Int
    private let range: ClosedRange<Int>

    var wrappedValue: Int {
        get { value }
        set { value = min(max(newValue, range.lowerBound), range.upperBound) }
    }

    init(wrappedValue: Int, range: ClosedRange<Int>) {
        self.value = wrappedValue
        self.range = range
    }
}

struct Player {
    @Clamped(range: 0...100)
    var health: Int = 50
}

var player = Player()
player.health = 120
print(player.health)  // 100

//Global and Local Variables
//Global variables are accessible anywhere, while local variables are scoped within a function or block.

var globalVar = "I am a global variable"

func test() {
    let localVar = "I am a local variable"
    print(globalVar)
    print(localVar)
}

test()  // I am a global variable, I am a local variable
//print(localVar) // Error: Not accessible outside the function

//Type Properties
//Type properties are associated with the type itself rather than any specific instance. Defined using static.
struct Math {
    static let pi = 3.14159
}
print(Math.pi)  // 3.14159

//Querying and Setting Type Properties
//Static properties can be queried and set using the type name.
class Counter {
    static var count = 0
    static func increment() {
        count += 1
    }
}

Counter.increment()
Counter.increment()
print(Counter.count)  // 2
