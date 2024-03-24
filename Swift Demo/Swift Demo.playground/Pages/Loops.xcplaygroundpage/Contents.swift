let array = ["a", "b", "c", "d", "e"]
let dict = ["a": 0, "b": 1, "c": 2, "d": 3, "e": 4]

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

for n in 0 ... 4 {
    print(n)
}
