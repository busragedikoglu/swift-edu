//What is String?
let greeting = "Hello, Swift!"
print(greeting) // Hello, Swift!

//Multiline String
let multilineString = """
First line
Second line
Third line
"""
print(multilineString) 

//Concatenation of Strings
let name = "Busra"
let surname = "Gedikoglu"
let fullName = name + " " + surname
print(fullName) // Busra Gedikoglu

let age = 22
print("My name is \(name) and I am \(age) years old.") // My name is Busra and I am 22 years old.

//String Features
let message = "Hello, Swift!"
print(message.count) // 13
print("First character: \(message[message.startIndex])") // H
print("Last character: \(message[message.index(before: message.endIndex)])") // !

//String Manipulation
var welcome = "Hello"
welcome.append(", Swift!")
print(welcome) // Hello, Swift!

welcome.insert("!", at: welcome.endIndex)
print(welcome) // Hello, Swift!!

welcome.remove(at: welcome.index(before: welcome.endIndex))
print(welcome) // Hello, Swift!

//String Comparison
let name1 = "Busra"
let anotherName = "busra"

print(name == anotherName) // false
print(name.lowercased() == anotherName) // true
print(name1.hasPrefix("Bu")) // true
print(name1.hasSuffix("ra")) // true

//Useful Substrings
let quote = "Swift programming language"
let start = quote.index(quote.startIndex, offsetBy: 6)
let end = quote.index(quote.endIndex, offsetBy: 17)
let substring = quote[start...end]
print(substring) // programming

//Character
for char in "Swift" {
    print(char)
} // S w i f t 