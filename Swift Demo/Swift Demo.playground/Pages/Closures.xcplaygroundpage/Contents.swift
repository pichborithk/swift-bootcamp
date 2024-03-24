// Closures Concept Demonstration

// Closures: Self-contained blocks of functionality that can be passed around and used in your code

// Defining a simple closure without parameters
let greet: () -> Void = {
    print("Hello, World!")
}

// Invoking the greet closure
greet()

// Defining a closure with parameters

// func add (_ n1: Int,_ n2: Int) -> Int {
//    return n1 + n2
// }

let add: (Int, Int) -> Int = { n1, n2 in
    n1 + n2
}

func calculator(_ n1: Int, _ n2: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(n1, n2)
}

let result = calculator(2, 3, operation: add)

let arrayOfNumbers = [4, 3, 6, 8, 1]

func addOne(_ n1: Int) -> Int {
    return n1 + 1
}

let arrayOfNumbers1 = arrayOfNumbers.map(addOne)

// Closures

let result2 = calculator(2, 3, operation: { (no1: Int, no2: Int) -> Int in no1 * no2 })

let result3 = calculator(4, 2, operation: { no1, no2 -> Int in no1 / no2 })

let result4 = calculator(4, 2, operation: { no1, no2 in no1 - no2 })

let result5 = calculator(2, 3, operation: { no1, no2 in no1 + no2 })

let result6 = calculator(4, 2, operation: { no1, no2 in no1 - no2 })

let result7 = calculator(2, 3, operation: { $0 * $1 })

let result8 = calculator(4, 2) { $0 / $1 }

let arrayOfNumbers2 = arrayOfNumbers1.map { $0 + 1 }

let arrayOfStrings = arrayOfNumbers2.map { "\($0)" }

// Defining a closure that returns another closure
func makeMultiplier(_ multiplier: Int) -> (Int) -> Int {
    return { number in
        number * multiplier
    }
}

// Using the makeMultiplier function to create a closure
let multiplyByThree = makeMultiplier(3)
let product = multiplyByThree(4)
print("Product:", product)

// Trailing Closure Syntax
func performOperation(_ operation: () -> Void) {
    operation()
}

performOperation {
    print("Performing an Operation using Trailing Closure Syntax")
}

// Capturing values in a closure
func makeIncrementer(incrementAmount: Int) -> () -> Int {
    var total = 0
    return {
        total += incrementAmount
        return total
    }
}

let incrementByTwo = makeIncrementer(incrementAmount: 2)
print("Increment:", incrementByTwo())
print("Increment:", incrementByTwo())
print("Increment:", incrementByTwo())
