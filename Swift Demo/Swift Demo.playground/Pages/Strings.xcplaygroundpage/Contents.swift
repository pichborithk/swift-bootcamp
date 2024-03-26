import Foundation
// String Manipulation Concepts Demonstration

// 1. Concatenation
let firstName = "John"
let lastName = "Doe"
let fullName = firstName + " " + lastName
print("Full Name:", fullName)

// 2. String Interpolation
let age = 30
let interpolatedString = "Hello, my name is \(firstName) and I am \(age) years old."
print("Interpolated String:", interpolatedString)

// 3. String Length
let message = "Hello, World!"
print("Message Length:", message.count)

// 4. String Indexing
let firstCharacter = message[message.startIndex]
print("First Character:", firstCharacter)

let lastCharacterIndex = message.index(before: message.endIndex)
let lastCharacter = message[lastCharacterIndex]
print("Last Character:", lastCharacter)

// 5. Substring
let startIndex = message.index(message.startIndex, offsetBy: 7)
let endIndex = message.index(message.endIndex, offsetBy: -1)
let substring = message[startIndex ..< endIndex]
print("Substring:", substring)

// 6. String Modification
var mutableMessage = "Hello, World!"
mutableMessage.insert(contentsOf: " Swift", at: mutableMessage.index(mutableMessage.startIndex, offsetBy: 13))
print("Modified Message:", mutableMessage)

// 7. String Conversion
let number = 123
let numberString = String(number)
print("Number String:", numberString)

// 8. String Comparison
let string1 = "apple"
let string2 = "Apple"
if string1.caseInsensitiveCompare(string2) == .orderedSame {
    print("Strings are equal (case-insensitive)")
} else {
    print("Strings are not equal (case-insensitive)")
}

// 9. String Splitting
let sentence = "Hello, World! Welcome to Swift."
let words = sentence.split(separator: " ")
print("Words:", words)
