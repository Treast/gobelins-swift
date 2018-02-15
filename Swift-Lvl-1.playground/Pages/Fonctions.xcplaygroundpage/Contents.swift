//: [Previous](@previous)
//:
//: Les fonctions
//:
//: ---
//: #### Chose à connaitre
//:
//: ---
//: * Les fonctions sont des types de closures
//:
//: ---
//:

//: ![Fonctions?](Swift-04.png)
// A compléter très largement en cours
//: Structure: nomDeLaFonction(nomDuParamètre:Type) -> valeurDeRetour
func sayHello(personName: String) -> String
{
    return "Hello, \(personName)"
}

//: Appel:
sayHello(personName: "Toto titi")

//: sans paramètre
func sayHelloWorld() -> String
{
    return "Hello, world"
}

//: sans valeur de retour
func sayGoodbyeToMyLittleFriend(name: String)
{
    "Goodbye, \(name)"
}

//: Retourne un `Tuple`
func getApplicationInfo() -> (name: String, version: String)
{
    return ("Super App", "v1.0")
}
var appInfo = getApplicationInfo()
appInfo.name
appInfo.version

//: Plusieurs param avec un paramètre par défaut
func addMul(firstAdder: Int, secondAdder: Int, multiplier: Int = 1) -> Int
{
    return (firstAdder + secondAdder) * multiplier
}

//: Appel plusieurs param
addMul(firstAdder: 1, secondAdder: 2)



func tutu(_ param: String) {
    
}

tutu("")

func ajouter(_ laValeurDeGauche: Int, à laValeurDeDroite: Int) -> Int { // Meilleure visibilité, phrase à lire. Le `_` permet de 'bypasser' le label de la fonction
    return laValeurDeGauche + laValeurDeDroite
}

ajouter(2, à: 3)

// Test
func ajouter2(_ a: Double, _ b:Double) -> Double {
    return a + b
}
ajouter2(10, 20)


func maFonction (_ monInt: Int, to monString: String) -> Double {
    return Double(monInt) + Double(monString.count)
}

let d = maFonction(5, to: "Toto")

//: [Next](@next)
