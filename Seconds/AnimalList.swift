import Foundation

struct Animal: Hashable {
    
    let name: String
    let timeMultiplier: Double
    
    var hashValue: Int {
        return name.hashValue ^ timeMultiplier.hashValue
    }
    
    static func ==(lhs: Animal, rhs: Animal) -> Bool {
        return lhs.name == rhs.name && lhs.timeMultiplier == rhs.timeMultiplier
    }
    
}

let animalList: Set<Animal> = [
    Animal(name: "Fly", timeMultiplier: 6.8),
    Animal(name: "Dog", timeMultiplier: 2.0),
    Animal(name: "Cat", timeMultiplier: 1.4),
    Animal(name: "Humans", timeMultiplier: 1.0),
    Animal(name: "Blacknose Shark", timeMultiplier: 0.45),
    Animal(name: "Leatherback Turtle", timeMultiplier: 0.37),
    Animal(name: "European Eel", timeMultiplier: 0.35)
]
