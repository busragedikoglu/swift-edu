//Structs and Classes Differences
//Inheritance - classes can inherit from other classes, but structs can't

//Value Reference Types - Structs are value types. Well meaning you assign or pass them,a copy of the data is created.
//                      - Classes are reference types. Well meaning you assign or pass them, the same instance is shared.

//Mutability - Structs are immutable by default unless marked as mutating.
//           - Classes can mutable properties regardless of their instance's mutability.

//Initialization - Classes can define a init method to perfom initialization.
//              - Structs do not have a init method.

//When to use Structs
//The data represents a value, you don't need inheritance, and you want valu-type behavior for safety and simplicity.

//When to use Classes
//You need inheritance or polymorphism, the instance's lifecycle needs to be controlled(with deinitializers), you want to share the same instance across your code.

struct PersonStruct {
    var name: String
}

class PersonClass {
    var name: String

    init(name: String) {
        self.name = name
    }
}

var structPerson = PersonStruct(name: "Alice")
var structPersonCopy = structPerson
structPersonCopy.name = "Bob"

print(structPerson.name)  // Alice
print(structPersonCopy.name)  // Bob

let classPerson = PersonClass(name: "Alice")
let classPersonCopy = classPerson
classPersonCopy.name = "Bob"

print(classPerson.name)  // Bob
print(classPersonCopy.name)  // Bob

//Class -  Changing classPersonCopy affects the original classPerson because they share the same memory reference.
