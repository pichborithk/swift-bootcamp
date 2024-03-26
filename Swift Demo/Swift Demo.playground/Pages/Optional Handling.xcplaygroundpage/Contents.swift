// Handling Optionals Concepts Demonstration

// 1. Force Unwrapping

//var optionalName: String? = nil
var optionalName: String? = "John"
var unwrappedName: String = optionalName!

print("Force Unwrapped Name:", unwrappedName)

// 2. Check for Nil Value
optionalName = nil

if optionalName != nil {
    print("Name:", optionalName!)
} else {
    print("Name is nil")
}

// 3. Optional Binding
optionalName = "Jane"

if let name = optionalName {
    print("Optional Binding - Name:", name)
} else {
    print("Name is nil")
}

// 4. Nil Coalescing Operator

//let firstName: String? = nil
let firstName: String? = "Alice"
let defaultName: String = "Unknown"

let finalName = firstName ?? defaultName
print("Final Name:", finalName)

// 5. Optional Chaining
struct Person {
    var name: String
    var address: Address?
}

struct Address {
    var street: String
    var city: String
    var country: String
}

let person: Person? = Person(name: "Bob", address: Address(street: "123 Main St", city: "City", country: "Country"))

let city = person?.address?.city ?? "Unknown"
print("City:", city)

// Computed Properties
var a : String? = nil

var f: String {
    if a != "a" {
        return "a"
    } else {
        return "b"
    }
}
