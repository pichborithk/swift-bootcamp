class Enemy {
    var health = 100
    var attackStrength: Int
    
    init(attackStrength: Int) {
        self.attackStrength = attackStrength
    }
    
    func takeDamage(amount: Int) {
        health = health - amount
    }
    
    func attack() {
        print("Land a hit, does \(attackStrength) damages.")
    }
    
    func scream() {
        print("Waaaaaaaaa.....")
    }
}

class Dragon: Enemy {
    var color: String
    
    init(attackStrength: Int, color: String) {
        self.color = color
        super.init(attackStrength: attackStrength)
    }
    
    override func scream() {
        print("Grrrrrr......")
    }
    
    override func attack() {
        print("Spits fire")
        super.attack()
    }
    
    func fly() {
        print("See ya......")
    }
}

let skeleton = Enemy(attackStrength: 10)
skeleton.scream()
skeleton.attack()


let dragon = Dragon(attackStrength: 20, color: "red")
dragon.scream()
dragon.attack()
dragon.fly()

let skeleton1 = Enemy(attackStrength: 5)
skeleton1.takeDamage(amount: 10)
let skeleton2 = skeleton1

skeleton2.takeDamage(amount: 10)
skeleton1.takeDamage(amount: 10)

print(skeleton1.health)
print(skeleton2.health)

