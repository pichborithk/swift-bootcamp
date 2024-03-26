// Class with Inheritance Concepts Demonstration

// 1. Define a Base Class
public class Person {
    // Properties
    public var name: String
    public var age: Int
    private var address: String

    // Computed Property
    public var description: String {
        return "\(name) is \(age) years old and lives at \(address)."
    }

    // Initializer
    public init(name: String, age: Int, address: String) {
        self.name = name
        self.age = age
        self.address = address
    }

    // Method
    public func introduce() {
        print("Hello, my name is \(name) and I am \(age) years old.")
    }

    // Public Method to update address
    public func updateAddress(newAddress: String) {
        address = newAddress
    }
}

// 2. Define a Derived Class (Employee) Inheriting from Base Class (Person)
public class Employee: Person {
    // Additional Property
    public var employeeID: String

    // Initializer
    public init(name: String, age: Int, address: String, employeeID: String) {
        self.employeeID = employeeID
        super.init(name: name, age: age, address: address)
    }

    // Overriding Method
    override public func introduce() {
        print("Hello, my name is \(name), I am \(age) years old, and my employee ID is \(employeeID).")
    }
}

// 3. Create Instances of the Derived Class
let person1 = Person(name: "John", age: 30, address: "123 Main St")
let employee1 = Employee(name: "Jane", age: 25, address: "456 Elm St", employeeID: "E12345")

// 4. Access Properties and Call Methods
print("Person 1:", person1.description)
print("Employee 1:", employee1.description)

person1.introduce()
employee1.introduce()

// 5. Modify Properties
var employee2 = employee1
employee2.name = "Alice"
employee2.age = 28
employee2.updateAddress(newAddress: "789 Oak St")

print("Employee 2:", employee2.description)

// 6. Classes are Reference Types
print("Employee 1:", employee1.description)
