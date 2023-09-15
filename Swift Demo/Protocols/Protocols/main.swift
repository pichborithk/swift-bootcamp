protocol CanFly {
    func fly()
}

// Default Implementations for Protocols
extension CanFly {
    func fly() {
        print("Default can fly")
    }
}

class Bird {
    var isFemale = true

    func layEgg() {
        if isFemale {
            print("The bird makes a new bird in shell.")
        }
    }
}

class Eagle: Bird, CanFly {
    func fly() {
        print("The eagle flaps its wings and lifts off into the sky.")
    }

    func soar() {
        print("The eagle glids in the air using air currents.")
    }
}

class Penguin: Bird {
    func swim() {
        print("The penguin paddles through the water.")
    }
}

struct FlyingMusem {
    func flyingDemo(flyingObject: CanFly) {
        flyingObject.fly()
    }
}

struct Airplane: CanFly {
//    func fly() {
//        print("The airplane use its engine to lift off into the air.")
//    }
}

let myEagle = Eagle()
let myPenguin = Penguin()
let myPlane = Airplane()

let museum = FlyingMusem()
museum.flyingDemo(flyingObject: myPlane)
