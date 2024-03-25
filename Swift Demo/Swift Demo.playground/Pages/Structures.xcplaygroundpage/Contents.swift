// Structure Concepts with Static and Access Modifiers Demonstration

// Access Modifiers:

// public: Allows entities to be accessed from any source file.
// private: Restricts the use of an entity to its own defining source file.
// internal: Allows entities to be accessed within the defining module.

// 1. Define a Structure with Access Modifiers
public struct Person {
    // Public properties
    public var name: String
    public var age: Int
    private var address: String

    // Computed Property
    public var description: String {
        return "\(name) is \(age) years old and lives at \(address)."
    }

    // Method with Internal Access Modifier
    func introduce() {
        print("Hello, my name is \(name) and I am \(age) years old.")
    }

    // Static Property or Type Property
    public static var count: Int = 0

    // Static Method or Type Method
    public static func increaseCount() {
        count += 1
    }

    // Initializer
    public init(name: String, age: Int, address: String) {
        self.name = name
        self.age = age
        self.address = address
        Person.increaseCount()
    }

    // Mutate Method to modify Properties
    mutating func changeName(newName: String) {
        name = newName
    }
}

// 2. Create Instances of the Structure
let person1 = Person(name: "John", age: 30, address: "123 Main St")
let person2 = Person(name: "Jane", age: 25, address: "456 Elm St")

// 3. Access Properties and Call Methods
print("Person 1:", person1.description)
print("Person 2:", person2.description)

person1.introduce()
person2.introduce()

// 4. Access Static Property and Call Static Method
print("Number of Persons:", Person.count)

// 5. Modify Properties (Not possible for address due to private access modifier)
var person3 = person1
person3.name = "Alice"
person3.age = 28
// person3.address = "789 Oak St"  // This would cause a compile-time error due to the private access modifier

print("Person 3:", person3.description)

// 6. Structures are Value Types
print("Person 1:", person1.description)
