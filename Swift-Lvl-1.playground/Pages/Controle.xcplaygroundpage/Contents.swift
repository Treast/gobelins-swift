//: [Previous](@previous)

//: ---
//: ## Les structures de contrôle
//:
//: ---
//:
// A compléter très largement en cours

// import de fondation (utilisé pour l'import de la fonction sin())
import Foundation

// Foundation contient toutes les fonctions de bases ainsi que certaines fonctions mathématiques (sin, floor, ceil etc...)

//: ![If Else?](Swift-07.png)

//: ---
//: ##### IF / IF-ELSE
//:
//: ---
// Les parenthèses ne sont pas nécessaires (les éviter par convention) et pour éviter les problèmes / confusions / biais avec les tuples
if 1 == 1 {
    // CODE
}

if 1 == 1 {
    // CODE
} else {
    // CODE
}

if 1 != 2 {} // true
if 1 == 2 {} // false
if 1 < 2 {} // true
if 1 > 2 {} // false
if 1 <= 2 {} // true
if 3 >= 3 {} // true

//: __AND__
if true && true {} // true
if true && false {} // false
if false && true {} // false
if false && false {} // false

//: __OR__
if true || true {} // true
if true || false {} // true
if false || true {} // true
if false || false {} // false

//: __NEGATIVE__
if !true {} // false
if !false {} // true
if !(true && true) {} // false
if !(true || false) {} // false
if !(false || false) {} // true


//: ---
//: ##### FOR
//:
//: ---

for i in 0...10 { // Ici 10 est compris
    print(i)
}

for i in 0..<10 { // Là 10 n'est pas compris
    print(i)
}

// On ne peut pas faire de boucle inverse facilement (toujours possible, mais plus difficile à mettre en place)

//: ---
//: ##### WHILE
//:
//: ---

// Décomenter et re-commenter pour de meilleurs performances


var i:Double = 0
var sinus:Double = 0
while i < 200 {
    print(i)
    var step = Double(i/10)
    i += 1
    sinus = sin(step)
}

//: __TIP: passer la souris tout à droite du résultat de la ligne sinus = sin(step) et cliquer sur le bouton `+`__


//: ---
//: ##### SWITCH
//:
//: ---

//: Les ENUMs sont très puissants en Swift, il feront l'objet d'un chapitre détaillé,
//: le propos ici est de présenter la syntaxe du switch

/*
 * enum = Enumération des valeurs possibles pour une `catégorie` en assignant un label à des constantes (Int, String ...)
 * Lors d'un switch d'un enum, on doit lister toutes les valeurs possibles (être exhaustif), ou bien alors mettre un cas par défaut (`default`) mais non conseillé
 */

enum MonEnum: Int {
    case un = 1,deux,trois // Ici à partir de 1, puis incrémente les valeurs assignées
}

var chiffre: MonEnum = .un
chiffre.rawValue // Retourne la valeur associé au label

switch chiffre {
    case .un: print("\(MonEnum.un)")
    case .deux: print("\(MonEnum.deux)")
    case .trois: print("\(MonEnum.trois)")
}

enum MonEnumString: String {
    case un = "Uno", deux = "Dos", trois = "Tres"
}

let monChiffre: MonEnumString = .deux

switch monChiffre {
    case .un: print("\(MonEnumString.un.rawValue)")
    case .deux: print("\(MonEnumString.deux.rawValue)")
    case .trois: print("\(MonEnumString.trois.rawValue)")
}

var maChaine = "MaChaine"

switch maChaine {
    case "MaChaine":
        print("found")
    case "Ma Chaine":
        print("found")

    default: print("not found")
}


// Lors d'un switch d'un enum, on doit lister toutes les valeurs possibles (être exhaustif), ou bien alors mettre un cas par défaut (`default`) mais non conseillé
//: [Next](@next)
