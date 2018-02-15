//: [Previous](@previous)

//: ---
//: ## Optional
//: ---

//: _Définition:_
//:
//: Un conteneur optionel signifie que son contenu __peut__ être nil (vide,NULL,null selon les langages)
//:
//: On le note avec un ? après son type
import Foundation

var chaineOptionelle: String? = nil // "Peut-être" rempli par un String, ou par `nil`
print(chaineOptionelle) // nil
chaineOptionelle = "texte"
print(chaineOptionelle) // Optional("texte")
print(chaineOptionelle!) // texte (on unwrap l'optional)

// OLD SCHOOL
if chaineOptionelle == nil {
    print("Ma chaine est vide")
} else {
    let tmp: String = chaineOptionelle!
    print(tmp)
}

if let maChaineUnWrapped: String = chaineOptionelle {
    print("Ma chaine vaut: \(maChaineUnWrapped)")
} else {
    print("Ma chaine est vide")
}

// A compléter très largement en cours

var maChaine: String? = "toto titi tutu"
print(maChaine)
maChaine = maChaine?.replacingOccurrences(of: "titi", with: "tata")

var maSecondeChaine: String? = nil
maSecondeChaine = maSecondeChaine?.replacingOccurrences(of: "titi", with: "tata") // Ne plante pas, vaut nil

/*
 * N'impacte pas le type -> Un Int8? gardera la même ampleur de valeur qu'un Int8
 */

class A {
    //    var tutu: Int // Bug si aucun `init`
    //    init(tutu: Int) {
    //        self.tutu = tutu
    //    }
    var tutu: Int?
}

/*
 * Créer une fonction qui prend un String? en paramètre, et afficher son contenu s'il n'est pas `nil`
 */

func unwrap(myString: String?) {
    if let unwrappedString = myString {
        print(unwrappedString)
    }
}

unwrap(myString: nil)
unwrap(myString: "Je teste la fonction")
