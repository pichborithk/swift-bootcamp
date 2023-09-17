func a() {
    print("a")
}

func a(b: String) {
    print(b)
}

a()

a(b: "b")

func b(_ c: String) {
    print(c)
}

b("c")

func c(d: Int) -> Int {
    return d + 1
}

let d = c(d: 1)

func f(g: Int = 0) -> Int{
    return g + 1
}

print(f())

print(f(g: 2))
