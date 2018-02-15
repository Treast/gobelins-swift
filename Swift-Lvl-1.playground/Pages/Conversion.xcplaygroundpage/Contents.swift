//: [Previous](@previous)
//:
//: ---
//: ## Conversion Numérique
//:
//: ---
//:
//: Les conversions de type doivent être **explicites**
// A compléter très largement en cours

let three = 3 // Int
let pointOneFourOneFiveNine = 0.14159 // Double
let doublePi = Double(three) + pointOneFourOneFiveNine // Conversion explicite du Int en double

// let doublePi2 = three + pointOneFourOneFiveNine -> ERROR
//: La conversion d'un float vers un Int tronque la décimale
//: doublePi devient 3 et -doublePi devient -3
let integerPi = Int(doublePi)
let negativePi = Int(-doublePi)

/*
 * Pas d'arrondi, mais un troncage
 * Int(3.99999) -> 3
 */

let someValue = 3 + 0.14159
//: **EXO: Essayer d'additionner un Int et un Double (stockés dans des conteneurs)**
// ICI
let monInt: Int = 2
let monDouble: Double = 40.0
let monAddition: Double = Double(monInt) + monDouble // On additionne bien un Double avec un Double

// Mais on stocke dans quoi ? (quel conteneur ?)

// Egalement valide
let monInt2: Int = 2
let monDouble2: Double = 40.0
let monAddition2: Int = monInt + Int(monDouble)
//: [Next](@next)
