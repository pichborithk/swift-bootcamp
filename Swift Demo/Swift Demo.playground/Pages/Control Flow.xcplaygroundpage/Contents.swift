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
