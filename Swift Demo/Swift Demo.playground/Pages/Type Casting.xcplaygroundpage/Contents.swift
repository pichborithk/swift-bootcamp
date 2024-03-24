import UIKit

class Animal {
    var name: String

    init(name: String) {
        self.name = name
    }
}

class Human: Animal {
    func code() {
        print("Typing away...")
    }
}

class Fish: Animal {
    func breathUnderWater() {
        print("Breathing under water.")
    }
}

let john = Human(name: "john")
let angela = Human(name: "Angela")
let nemo = Fish(name: "Nemo")

let neighbours = [john, angela, nemo]

if neighbours[0] is Human {
    print("yes")
}

let neighbour1 = neighbours[0] as! Human

if let neighbour2 = neighbours[1] as? Fish {
    neighbour2.breathUnderWater()
}

let neighbour3 = neighbours[2] as? Human
neighbour3?.code()

let human1 = neighbour1 as Animal
