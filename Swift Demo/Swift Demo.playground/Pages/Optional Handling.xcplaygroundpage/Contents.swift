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
let optionalString: String? = "Hello, World!"
let optionalNumber: Int? = Int("123")
let optionalArray: [Int]? = [1, 2, 3]

// 3.1. Using if let for Optional Binding
if let unwrappedString = optionalString {
    print("if let - Unwrapped String:", unwrappedString)
} else {
    print("if let - Optional String is nil")
}

// 3.2. Using guard let for Optional Binding
func printNumber() {
    guard let unwrappedNumber = optionalNumber else {
        print("guard let - Optional Number is nil")
        return
    }
    print("guard let - Unwrapped Number:", unwrappedNumber)
}

printNumber()

// 3.3. Using if let with Multiple Optional Bindings
if let unwrappedString = optionalString,
   let unwrappedNumber = optionalNumber {
    print("if let - Unwrapped String:", unwrappedString)
    print("if let - Unwrapped Number:", unwrappedNumber)
} else {
    print("if let - One or both optionals are nil")
}

// 3.4. Using guard let with Multiple Optional Bindings
func printArray() {
    guard let unwrappedArray = optionalArray, !unwrappedArray.isEmpty else {
        print("guard let - Optional Array is nil or empty")
        return
    }
    print("guard let - Unwrapped Array:", unwrappedArray)
}

printArray()

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
