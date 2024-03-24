struct Town {
    let name = "a"
    var citizens = [1, 2, 3]
    var resources = ["a": 1, "b": 2]

    func fortify() {
        print("b")
    }
}

var myTown = Town()

print(myTown.name)
print(myTown.citizens)
myTown.fortify()

struct Car {
    let color: String
    let tires = 4

    init(color: String) {
        self.color = color
    }
}

var myCar = Car(color: "red")
myCar.tires
myCar.color

struct Bike {
    var color: String
    let tires: Int

    mutating func changeColor(newColor: String) {
        color = newColor
    }
}

var myBike = Bike(color: "blue", tires: 2)
myBike.tires
myBike.color
myBike.changeColor(newColor: "Yellow")
myBike.color

var bike1 = Bike(color: "pink", tires: 2)
var bike2 = bike1

bike1.changeColor(newColor: "green")
bike2.changeColor(newColor: "orange")
print(bike1.color)
print(bike2.color)

// Type Property

struct Constants {
    let instanceProperty = "abc" // Instance Property
    static let typeProperty = "123"
    
    static func typeMethod() {
        print("Type Method has been called...")
    }
}

var myConstant = Constants()

// myConstant can not access Type Property

print(Constants.typeProperty) // This is the way to access Type Property
Constants.typeMethod()
