//If and Else
let temperature = 30
if temperature > 25 {
    print("It is a hot day.")
} else if temperature > 15 {
    print("It is a warm day.")
} else {
    print("It is a cold day.")
}

//Switch Case
let fruit = "apple"

switch fruit {
case "apple":
    print("Apple is red.")
case "banana":
    print("Banana is yellow.")
default:
    print("I do not know the color of this fruit.")
}

//For Loop
let numbers = [1, 2, 3, 4, 5]
for number in numbers {
    print(number)
}

//While Loop
var count = 0
while count < 5 {
    print(count)
    count += 1
}

//Repeat While Loop
var number = 10
repeat {
    print(number)
    number -= 1
} while number > 0  // It is different from while loop because it executes the code block first and then checks the condition.

//Guard 
func checkAge(_ age: Int) {
    guard age > 18 else {
        print("You are too young.")
        return
    }
    print("You can enter.")
}

checkAge(20) // You can enter.

//Break and Continue
//Break: Completely terminates the loop.
//Continue: Skip the loop and moves on the next one.

