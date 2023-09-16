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
