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

