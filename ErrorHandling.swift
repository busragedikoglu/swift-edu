//Error Handling
//The use of enums is common to model correlated error conditions.
enum VendingMachineError: Error {
    case invalidSelection
    case insufficientFunds(coinsNeeded: Int)
    case outOfStock
}

//The error is thrown with the throw keyword.
throw VendingMachineError.insufficientFunds(coinsNeeded: 5) //Error: insufficientFunds(5)

//There are four basic ways to handle errors.
//1- throws: If the func throws an error, it is marked with the throws keyword.
func vend(itemNamed name: String) throws { } 
//When called, it is necessary to use the try keyword.
try vend(itemNamed: "Candy")

//2- Do-Catch: Errors can be caught in a do block and handled with catch blocks.
do {
    try vend(itemNamed: "Candy")
} catch {
    print("Unexpected error: \(error).")
}

//3- Optional: The try? keyword is used to convert errors to optional values.
let result = try? vend(itemNamed: "Candy")

//4- Mandatory Error Catching(try!): try! is used in cases where t is absolutely certain that an error will not occur.
let result2 = try! vend(itemNamed: "Candy") //If an error occurs, the program crashes.
