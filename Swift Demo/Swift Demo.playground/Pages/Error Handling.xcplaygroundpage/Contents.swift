// Error Handling Concepts Demonstration

// 1. Define an Error Type

enum CustomError: Error {
    case invalidInput
    case outOfBounds
}

// 2. Function that Throws an Error

func divide(numerator: Int, denominator: Int) throws -> Int {
    // throw error if divide by 0
    /*
     if denominator == 0 {
     throw CustomError.invalidInput
     } else {
     return numerator / denominator
     }
     */
    
    guard denominator != 0 else {
        throw CustomError.invalidInput
    }
    
    return numerator / denominator
}

// 3. Handling Errors with Do-Catch

do {
    let result = try divide(numerator: 10, denominator: 2)
    print("Result of division:", result)
} catch CustomError.invalidInput {
    print("Invalid input: Division by zero is not allowed.")
} catch {
    print("An unknown error occurred.")
}

do {
    let result = try divide(numerator: 10, denominator: 0)
    print("Result of division:", result)
} catch CustomError.invalidInput {
    print("Invalid input: Division by zero is not allowed.")
} catch {
    print("An unknown error occurred.")
}

// 4. Handling Errors with Optional Try

if let result = try? divide(numerator: 10, denominator: 2) {
    print("Result of division:", result)
} else {
    print("An error occurred.")
}

if let result = try? divide(numerator: 10, denominator: 0) {
    print("Result of division:", result)
} else {
    print("An error occurred.")
}

// 5. Propagating Errors

func propagateError() throws {
    let result = try divide(numerator: 10, denominator: 0)
    print("Result of division:", result)
}

do {
    try propagateError()
} catch {
    print("Error propagated:", error)
}

// 6. Disable Error Handling

try! divide(numerator: 10, denominator: 5)
