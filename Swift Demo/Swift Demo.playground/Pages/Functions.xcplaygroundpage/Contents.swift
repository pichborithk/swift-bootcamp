// Function Concepts Demonstration

// 1. Function without Parameters and Return Value
func greet() {
    print("Hello, World!")
}

greet()

// 2. Function with Default Parameter Value
func greet(name: String = "World") {
    print("Hello, \(name)!")
}

greet()
greet(name: "John")

// 3. Function with Parameters and Return Value
func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}

let sum = add(5, 3)
print("Sum:", sum)


// 4. Function with Variadic Parameters
func average(_ numbers: Double...) -> Double {
    var total = 0.0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}

let avg = average(1.0, 2.0, 3.0, 4.0, 5.0)
print("Average:", avg)

// 5. Function with In-Out Parameters
func swap(_ a: inout Int, _ b: inout Int) {
    let temp = a
    a = b
    b = temp
}

var x = 5
var y = 10
swap(&x, &y)
print("Swapped x:", x, "y:", y)

// 6. Function as a Parameter
func multiply(_ a: Int, _ b: Int) -> Int {
    return a * b
}

func operate(_ operation: (Int, Int) -> Int, _ a: Int, _ b: Int) -> Int {
    return operation(a, b)
}

let product = operate(multiply, 4, 3)
print("Product:", product)

// 7. Nested Functions
func outerFunction(_ value: Int) -> Int {
    func innerFunction(_ value: Int) -> Int {
        return value * 2
    }
    
    return innerFunction(value)
}

let result = outerFunction(5)
print("Result:", result)
