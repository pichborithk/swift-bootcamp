import UIKit

enum DivisionError: Error {
    case dividedByZero
}

// create throwing function using throws keyword
func division(numerator: Int, denominator: Int) throws {
    // throw error if divide by 0
    if denominator == 0 {
        throw DivisionError.dividedByZero
    } else {
        print(Double(denominator) / Double(numerator))
    }
}

do {
    try division(numerator: 10, denominator: 0)
} catch DivisionError.dividedByZero {
    print("Error: Denominator cannot be 0")
}

// Disable Error Handling

try! division(numerator: 10, denominator: 5)
