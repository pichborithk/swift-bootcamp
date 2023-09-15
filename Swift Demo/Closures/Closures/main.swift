func calculator (_ n1: Int,_ n2: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(n1, n2)
}

func add (_ n1: Int,_ n2: Int) -> Int {
    return n1 + n2
}

let result = calculator(2, 3,operation: add)

let arrayOfNumbers = [4, 3, 6, 8, 1]

func addOne (_ n1: Int) -> Int {
    return n1 + 1
}

let arrayOfNumbers1 = arrayOfNumbers.map(addOne)

//Closures

let result2 = calculator(2, 3, operation: { (no1: Int, no2: Int) -> Int in return no1 * no2 })

let result3 = calculator(4, 2, operation: { (no1, no2) -> Int in return no1 / no2 })

let result4 = calculator(4, 2, operation: { (no1, no2) in return no1 - no2 })

let result5 = calculator(2, 3, operation: { (no1, no2) in no1 + no2 })

let result6 = calculator(4, 2, operation: { no1, no2 in no1 - no2 })

let result7 = calculator(2, 3, operation: { $0 * $1 })

let result8 = calculator(4, 2) { $0 / $1 }

let arrayOfNumbers2 = arrayOfNumbers1.map { $0 + 1 }

let arrayOfStrings = arrayOfNumbers2.map { "\($0)" }

