// Range Operator Concepts Demonstration

// 1. Closed Range Operator (a...b)
print("Closed Range Operator:")
let a = Int.random(in: 1 ... 4)
// 1, 2, 3, 4

// 2. Half-Open Range Operator (a..<b)
print("Half-Open Range Operator:")
let b = Int.random(in: 1 ..< 4)
// 1, 2, 3

// 3. One-Sided Ranges
print("One-Sided Ranges:")
let names = ["Alice", "Bob", "Charlie", "David", "Eve"]

// From the start up to a specified index
for name in names[..<2] {
    print(name)
}

// From a specified index to the end
for name in names[2...] {
    print(name)
}

// Up to a specified index
for name in names[...2] {
    print(name)
}

// From a specified index
for name in names[2...] {
    print(name)
}

// 4. One-Sided Ranges with Strings
let greeting = "Hello, World!"

// Up to a specified index
let startIndex = greeting.startIndex
let endIndex = greeting.index(startIndex, offsetBy: 5)
let substring = greeting[startIndex ..< endIndex]
print("Substring:", substring)

// From a specified index
let newStartIndex = greeting.index(startIndex, offsetBy: 7)
let newSubstring = greeting[newStartIndex...]
print("New Substring:", newSubstring)
