//: Playground - noun: a place where people can play

class Game {
    var lifeUp: LifeUp?
    
}

class LifeUp {
    var numberOfLife = 1
    
}


let sam = Game()

sam.lifeUp = LifeUp()

let lifeCount = sam.lifeUp?.numberOfLife

if let lifeCount = sam.lifeUp?.numberOfLife {
    print("Your current life is \(lifeCount)")

} else {
    print("Unable to get a life upgarde")
}






