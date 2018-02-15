//: [Previous](@previous)
//:
//: Les Classes
//:
//: ---
//: #### Chose à connaitre
//:
//: ---
//:
//:
//: ---
//:

//: ![Classe?](Swift-09.png)


// A compléter très largement en cours
class A {
    var meaningOfLife: Int = 42
} // La classe A a, par défaut, une méthode `init` qu'il faut override dans MaClasse

class MaClasse: A {
    var toto = ""
    var titi = 3
    
    func maFonctionSansParam() {
        print("je ne fais rien")
    }
    
    init(monParam:String) { // Constructeur
        toto = monParam
        
        if true {
            var _ = 3
        }
        // ici `_` n'est pas résolu (portée locale)
    }
    
    override init() { // Surcharge
    
    }
    
}

var maClassInstance = MaClasse(monParam: "titi") // Instanciation
maClassInstance.maFonctionSansParam()
maClassInstance.toto
maClassInstance.toto = "tutu"
maClassInstance.toto
maClassInstance.meaningOfLife

//:
//: Les Structures
//:
//: ---
//: #### Chose à connaitre
//:
//: ---
//:
//:
//: ---
//:

// A compléter très largement en cours

// Similaire à une classe, mais correspond à une structure de données
// Si calcul / traitement, alors il faut utiliser une classe

struct MaStruct {
    var toto = ""
    var titi = 3
    
    func maFonctionSansParam() {
        print("je ne fais rien")
    }
    
    init(monParam:String) { // Une structure possède par défaut un constructeur vide, et un constructeur avec tout les attributs de la structure
        toto = monParam
    }
    
}

var maStructInstance = MaStruct(monParam: "tutu")
maStructInstance.maFonctionSansParam()

// Exercices

/*
 * Créer une classe Animal qui a :
 * une fonction `noise()`
 * un paramètre `name` de type String
 * un paramètre `typeOfAnimal` de type Enum
 * un constructeur qui prend un enum en paramètre, un nom
 */
 
/*
 * Créer une classe Chien qui hérite d'Animal
 * Idem pour Cat & Horse
 * Créer une fonction qui prend en paramètre un animal et qui fait le bruit de l'animal
 */

enum TypeOfAnimal: String {
    case Mamifere = "Mamifère", Oiseau = "Oiseau", Reptile = "Reptile" // Pour l'accent
}

class Animal {
    var name: String
    var typeOfAnimal: TypeOfAnimal
    
    init(withName name: String, ofType type: TypeOfAnimal) {
        self.name = name
        self.typeOfAnimal = type
    }
    
    func noise() {
        print("\(name) (\(typeOfAnimal.rawValue)) a dit: Zbreuh zbreuh")
    }
}

class Mamifere: Animal {
    init(_ name: String) {
        super.init(withName: name, ofType: .Mamifere)
    }
}

class Dog: Mamifere {
    override func noise() {
        print("\(name) (\(typeOfAnimal.rawValue)) a dit: Waff waff")
    }
}
class Horse: Mamifere {
    override func noise() {
        print("\(name) (\(typeOfAnimal.rawValue)) a dit: Hueee hueee")
    }
}
class Cat: Mamifere {
    override func noise() {
        print("\(name) (\(typeOfAnimal.rawValue)) a dit: Miaou miaou")
    }
}

func jeFaisDuPolymorphisme(avecUnAnimal animal: Animal) {
    animal.noise()
}

let animal = Animal(withName: "Serge le lama", ofType: .Oiseau)

let chien = Dog("SuperDog")
let cheval = Horse("SuperHorse")
let chat = Cat("SuperCat")

jeFaisDuPolymorphisme(avecUnAnimal: animal)
jeFaisDuPolymorphisme(avecUnAnimal: chien)
jeFaisDuPolymorphisme(avecUnAnimal: chat)
jeFaisDuPolymorphisme(avecUnAnimal: cheval)
//: [Next](@next)
