//Closures
//It is an independent bloc of code. It can be assigned to a varible, passed as a parameter to anathor func, and returned from a func.

let sayHello = {
    print("Hello!")
}

/*syntax
{(parameters) -> return type in
    //code
} 
*/
let greet: (String) -> String = {(name) -> String in
    return "Hello, \(name)!"
}
print(greet("Busra")) // Hello, Busra!

//Closures as Parameters and Return Types
let say = { name in
"Hello, \(name)!"
}
print(say("Busra")) // Hello, Busra!


//Trailing Closures
/*When the last parameter of a function is a closure, you can use the trailing closure syntax. 
This moves the closure outside the parentheses.*/
func performAction(action: () -> Void) {
    action()
}

performAction {
    print("This is a trailing closure.")
}

//Autoclosures
//Automatically creates a closure. It makes your code more readable.
func printIfTrue(_ predicate: @autoclosure () -> Bool) {
    if predicate() {
        print("True!")
    }
}

printIfTrue(5 > 3) // true!

