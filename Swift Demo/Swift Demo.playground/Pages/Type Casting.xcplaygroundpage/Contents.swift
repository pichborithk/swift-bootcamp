import Foundation

// Type Casting Concepts Demonstration

// 1. Upcasting
class Vehicle {
    func drive() {
        print("Driving a vehicle.")
    }
}

class Car: Vehicle {
    func accelerate() {
        print("Accelerating the car.")
    }
}

let vehicle: Vehicle = Car()
//let vehicle = Car() as Vehicle

vehicle.drive()  // Accessible
// vehicle.accelerate()  // Not accessible, since vehicle is of type Vehicle

// 2. Downcasting with 'as?'
if let car = vehicle as? Car {
    car.accelerate()  // Accessible
} else {
    print("Cannot downcast to Car.")
}

// 3. Downcasting with 'as!'
let anotherVehicle: Vehicle = Car()
let anotherCar = anotherVehicle as! Car
anotherCar.accelerate()  // Accessible

// 4. Type Checking with 'is'
if vehicle is Car {
    print("Vehicle is a Car.")
} else {
    print("Vehicle is not a Car.")
}

// 5. Any and AnyObject
let anyArray: [Any] = [1, "Two", 3.0, Vehicle()]
for item in anyArray {
    switch item {
    case let int as Int:
        print("Found an integer:", int)
    case let string as String:
        print("Found a string:", string)
    case let double as Double:
        print("Found a double:", double)
    case let vehicle as Vehicle:
        print("Found a vehicle:", vehicle)
    default:
        print("Found an unknown type.")
    }
}
