var a: String? = nil

a = "Value"

// Force Unwrapping
let b: String = a!

// Check for nill value

if a != nil {
    let b: String = a!
    print(b)
}

// Optional Binding

if let b = a {
    print(b)
}

// Nil Coalescing Operator

let c = a ?? "defaultValue"

//Optional Chaining

struct MyOptional {
    var value = 1
    
    func method() {
        print("method")
    }
}

let myOptional: MyOptional? = MyOptional()

print(myOptional?.value as Any)
myOptional?.method()

// Computed Properties

var f: String {
    if a != "a" {
        return "a"
    } else {
        return "b"
    }
}
