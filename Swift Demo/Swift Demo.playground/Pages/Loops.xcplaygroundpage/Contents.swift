// Loop Concepts Demonstration

let array = ["a", "b", "c", "d", "e"]
let dict = ["a": 0, "b": 1, "c": 2, "d": 3, "e": 4]

// 1. For-In Loop
for char in array {
    print(char)
}

for item in dict {
    print(item.key)
    print(item.value)
}

for n in 0 ..< 5 {
    print(n)
}

for n in 0...4 {
    print(n)
}

// 2. While Loop
var countdown = 5

print("Countdown:")
while countdown > 0 {
    print(countdown)
    countdown -= 1
}

// 3. Repeat-While Loop
var countdown2 = 5

print("Countdown 2:")
repeat {
    print(countdown2)
    countdown2 -= 1
} while countdown2 > 0

// 4. Continue Statement
print("Even numbers from 1 to 10:")
for i in 1...10 {
    if i % 2 != 0 {
        continue
    }
    print(i)
}

// 5. Break Statement
print("Numbers from 1 to 5 before 4:")
for i in 1...5 {
    if i == 4 {
        break
    }
    print(i)
}

// 6. Continue with Label
outerLoop: for i in 1...3 {
    for j in 1...3 {
        if j == 2 {
            continue outerLoop
        }
        print("i: \(i), j: \(j)")
    }
}
