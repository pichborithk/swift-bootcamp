// Dictionary Data Type Demonstration

// Dictionary: Represents a collection of key-value pairs
// Dictionaries are unordered collections of key-value associations with unique keys

// Defining a Dictionary with String keys and Int values
let scores: [String: Int] = ["John": 90, "Jane": 85, "Doe": 88]
print("Scores Dictionary:", scores)

// Accessing Dictionary values by key
let johnScore = scores["John"]
let janeScore = scores["Jane"]
print("John's Score:", johnScore as Any)
print("Jane's Score:", janeScore as Any)

// Modifying Dictionary values
var mutableScores = scores
mutableScores["Jane"] = 90
print("Mutable Scores Dictionary:", mutableScores)

// Adding key-value pairs to a Dictionary
mutableScores["Emily"] = 95
print("Scores Dictionary after Add:", mutableScores)

// Removing key-value pairs from a Dictionary
mutableScores.removeValue(forKey: "Doe")
print("Scores Dictionary after Remove:", mutableScores)

// Iterating over a Dictionary
for (name, score) in mutableScores {
    print("Name:", name, "Score:", score)
}

// Check if a Dictionary is empty
let isEmpty = mutableScores.isEmpty
print("Is Scores Dictionary Empty:", isEmpty)

// Counting key-value pairs in a Dictionary
let count = mutableScores.count
print("Count of Scores Dictionary:", count)
