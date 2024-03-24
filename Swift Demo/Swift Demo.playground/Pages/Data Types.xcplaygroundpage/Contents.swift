// Swift Data Types Demonstration

// 1. Integer Data Types

// Int: Represents signed integers
let intValue: Int = 42
print("Int Value:", intValue)

// Int8, Int16, Int32, Int64: Represents 8-bit, 16-bit, 32-bit, and 64-bit signed integers respectively
let int8Value: Int8 = 127
let int16Value: Int16 = 32767
let int32Value: Int32 = 2147483647
let int64Value: Int64 = 9223372036854775807

print("Int8 Value:", int8Value)
print("Int16 Value:", int16Value)
print("Int32 Value:", int32Value)
print("Int64 Value:", int64Value)

// UInt: Represents unsigned integers
let uintValue: UInt = 42
print("UInt Value:", uintValue)

// UInt8, UInt16, UInt32, UInt64: Represents 8-bit, 16-bit, 32-bit, and 64-bit unsigned integers respectively
let uint8Value: UInt8 = 255
let uint16Value: UInt16 = 65535
let uint32Value: UInt32 = 4294967295
let uint64Value: UInt64 = 18446744073709551615

print("UInt8 Value:", uint8Value)
print("UInt16 Value:", uint16Value)
print("UInt32 Value:", uint32Value)
print("UInt64 Value:", uint64Value)

// 2. Floating-Point Data Types

// Float: Represents a 32-bit floating-point number
let floatValue: Float = 3.14
print("Float Value:", floatValue)

// Double: Represents a 64-bit floating-point number
let doubleValue: Double = 3.141592653589793
print("Double Value:", doubleValue)

// 3. Boolean Data Type

// Bool: Represents a Boolean value (true or false)
let boolValue: Bool = true
print("Bool Value:", boolValue)

// 4. Character Data Type

// Character: Represents a single character
let charValue: Character = "A"
print("Character Value:", charValue)

// 5. String Data Type

// String: Represents a sequence of characters
let stringValue: String = "Hello, Swift!"
print("String Value:", stringValue)

// 6. Array Data Type

// Array: Represents an ordered collection of values
let arrayValue: [Int] = [1, 2, 3, 4, 5]
print("Array Value:", arrayValue)

// 7. Dictionary Data Type

// Dictionary: Represents a collection of key-value pairs
let dictionaryValue: [String: Int] = ["One": 1, "Two": 2, "Three": 3]
print("Dictionary Value:", dictionaryValue)

let dictionaryMix = ["a": "1", 1: 2] as [AnyHashable: Any]
print("DictionaryMix Value:", dictionaryMix)

// 8. Optional Data Type

// Optional: Represents a value that may or may not exist
let optionalValue: Int? = nil
print("Optional Value:", optionalValue as Any)

// 9. Tuples
let tupleValue = (1, 2)
print("Tuple Value:", tupleValue)



