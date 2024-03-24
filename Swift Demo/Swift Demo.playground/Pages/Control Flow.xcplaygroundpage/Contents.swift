// Control Flow Concepts Demonstration

// 1. If Statement
let a = 1

if a < 1 {
    print("smaller")
} else if a == 1 {
    print("equal")
} else if a <= 5 {
    print("bigger")
} else {
    print("biggest")
}

if a > 0 && a < 2 {
    print("equal")
}

if a > 0 || a < 1 {
    print("equal")
}

// 2. Switch Statement
switch a {
case 7 ... 9:
    print("a")
case 4 ..< 7:
    print("b")
case 3...:
    print("c")
case ...2:
    print("d")
default:
    print("e")
}

// 3. Guard Statement
func greet(person: [String: String]) {
    guard let name = person["name"] else {
        print("Name not found")
        return
    }
    print("Hello, \(name)!")
}

greet(person: ["name": "John"])
greet(person: [:])
