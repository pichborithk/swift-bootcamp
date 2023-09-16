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
