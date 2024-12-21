//Enum
//Used when you need to choose between constants or cases

enum CompassPoint {
    case north
    case south
    case east
    case west
}

let direction = CompassPoint.north
print(direction)  // north

//Enum and Switch Usage
switch direction {
case .north:
    print("Go North!")
case .south:
    print("Go South!")
case .east:
    print("Go East!")
case .west:
    print("Go West!")
}

//Enum add raw values
enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

print(Planet.earth.rawValue) // 3

//Associated Values
//Enums are not just fixed states, they can hold one or more associated values for each state.
enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

let productCode = Barcode.upc(8, 85909, 51226, 3)
let qrCode = Barcode.qrCode("https://example.com")

switch productCode {
case .upc(let numberSystem, let manufacturer, let product, let check):
    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
case .qrCode(let code):
    print("QR code: \(code)")
}

//Enum and Computed Properties
//Enums can have computed properties.

enum Beverage {
    case coffee, tea, juice

    var description: String {
        switch self {
        case .coffee:
            return "Coffee"
        case .tea:
            return "Tea"
        case .juice:
            return "Juice"
        }
    }
}

let drink = Beverage.tea
print(drink.description)  // Tea

//Enum Advantages
//readable code, type safety, switch obligation
//Enum Dezavantages
//If used too frequently, the flexibility of the code may decrease.
