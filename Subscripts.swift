//Subscripts
/*Subscripts provide a convient way to accesss the elements of a collection, list, or sequence.
They allow accessing instance like someArray[index] or someDictionary[key].
Classes, structures, and enumerations can define subscripts.
Supsripts can take multiple parameters and can be either read-only or read-write.
Supscripts use get and set keywords for iplementation.
Static subscripts operate on the type itself rather than on an instance of the type.
*/

struct TimesTable {
    let multiplier: Int
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}

let threeTimesTable = TimesTable(multiplier: 3)
print(threeTimesTable[6])  // 18

//Multidimensional Subscript
struct Matrix {
    let rows: Int, columns: Int
    var grid: [Double]

    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        self.grid = Array(repeating: 0.0, count: rows * columns)
    }

    func indexIsValid(row: Int, column: Int) -> Bool {
    return row >= 0 && row < rows && column >= 0 && column < columns
    }

    subscript(row: Int, column: Int) -> Double {
    get {
        assert(indexIsValid(row: row, column: column), "Index out of range")
        return grid[(row * columns) + column]
    }
    set {
        assert(indexIsValid(row: row, column: column), "Index out of range")
        grid[(row * columns) + column] = newValue
    }
    }
}

var matrix = Matrix(rows: 2, columns: 2)
matrix[0, 1] = 1.5
matrix[1, 0] = 3.2
print(matrix[0, 1])  // 1.5

//Static Subscripts
enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
    static subscript(n: Int) -> Planet {
        return Planet(rawValue: n)!
    }
}

let mars = Planet[4]
print(mars)  // mars


