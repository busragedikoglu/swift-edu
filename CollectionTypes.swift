//Array
var fruits = ["apple", "banana", "orange"]
print(fruits[0]) // apple

fruits.append("watermelon")
print(fruits) // ["apple", "banana", "orange", "watermelon"]
fruits.remove(at: 1)
print(fruits) // ["apple", "orange", "watermelon"]

//Set
var numbers: Set = [1, 2, 3, 1]
print(numbers) // [2, 3, 1] unusual and unique

//Clusure Operations
let setA: Set = [1, 2, 3]
let setB: Set = [3, 4, 5]

print(setA.union(setB)) // [1, 2, 3, 4, 5]
print(setA.intersection(setB)) // [3]
print(setA.subtracting(setB)) // [1, 2]

//Dictionary
var studentGrades = ["Busra": 100, "Ayse": 90]
print(studentGrades["Busra"]!) // 100

studentGrades["Fatma"] = 80
print(studentGrades) // ["Busra": 100, "Ayse": 90, "Fatma": 80]

studentGrades["Ayse"] = nil
print(studentGrades) // ["Busra": 100, "Fatma": 80]

//Collection Loop
let names = ["Busra", "Ali", "Ayşe"]

for name in names {
    print("Hello, \(name)!")
}

// Dictionary Loop
let ages = ["Busra": 25, "Ali": 30]
for (name, age) in ages {
    print("\(name) \(age)")
}

//Empty Collection
var emptyArray: [Int] = []
print(emptyArray.isEmpty) // true
var emptySet: Set<Int> = []
print(emptySet.isEmpty) // true