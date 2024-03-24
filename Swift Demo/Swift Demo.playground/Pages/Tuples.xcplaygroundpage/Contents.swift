// Tuple Data Type Demonstration

// Tuple: Represents a grouping of multiple values into a single compound value
// Tuples can contain values of any type and can be accessed by index or by naming the elements

// Defining a Tuple with two elements
let person: (String, Int) = ("John", 30)
print("Person Tuple:", person)

// Accessing Tuple elements by index
let name = person.0
let age = person.1
print("Name:", name)
print("Age:", age)

// Defining a Tuple with named elements
let coordinates: (x: Int, y: Int) = (2, 3)
print("Coordinates Tuple:", coordinates)

// Accessing Tuple elements by name
let xCoordinate = coordinates.x
let yCoordinate = coordinates.y
print("X Coordinate:", xCoordinate)
print("Y Coordinate:", yCoordinate)
