// Array Data Type Demonstration

// Array: Represents an ordered collection of values
// Arrays are collections of values of the same type, and they are indexed starting from zero

// Defining an Array of Integers
let numbers: [Int] = [1, 2, 3, 4, 5]
print("Numbers Array:", numbers)

// Accessing Array elements by index
let firstNumber = numbers[0]
let lastNumber = numbers[4]
print("First Number:", firstNumber)
print("Last Number:", lastNumber)

// Modifying Array elements
var mutableNumbers = numbers
mutableNumbers[2] = 30
print("Mutable Numbers Array:", mutableNumbers)

// Adding elements to an Array
mutableNumbers.append(6)
print("Numbers Array after Append:", mutableNumbers)

// Removing elements from an Array
mutableNumbers.remove(at: 2)
print("Numbers Array after Remove:", mutableNumbers)

// Iterating over an Array
for number in mutableNumbers {
    print("Number:", number)
}

// Check if an Array is empty
let isEmpty = mutableNumbers.isEmpty
print("Is Numbers Array Empty:", isEmpty)

// Counting elements in an Array
let count = mutableNumbers.count
print("Count of Numbers Array:", count)
