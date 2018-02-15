//: [Previous](@previous)

import Foundation


protocol AuthenticationProtocol {
    func key(p:String)
    func password(p:String)
    func cipher() -> String
}

protocol WirelessProtocol {
    func scan()
    func connect()
    func disconnect()
    func read()
    func write<CMD>(cmd: CMD)
}

struct AES128:AuthenticationProtocol {
    func key(p: String) {}
    func password(p: String) {}
    func cipher() -> String {
        // Truc super compliqué
        return "Chiffré en 128"
    }
}

struct AES256:AuthenticationProtocol {
    func key(p: String) {}
    func password(p: String) {}
    func cipher() -> String {
        // Truc super compliqué
        return "Chiffré en 256"
    }
}

class Wifi<TypeDeChiffrement>:WirelessProtocol {
    var systemeDeChiffrement:TypeDeChiffrement? = nil
    init(chiffrement:TypeDeChiffrement) {
        systemeDeChiffrement = chiffrement
    }
    
    func scan() {}
    func connect() {}
    func disconnect() {}
    func read() {}
    func write<CMD>(cmd: CMD) {}
}

class BLE<TypeDeChiffrement>:WirelessProtocol {
    var systemeDeChiffrement:TypeDeChiffrement? = nil
    init(chiffrement:TypeDeChiffrement) {
        systemeDeChiffrement = chiffrement
    }
    
    func scan() {}
    func connect() {}
    func disconnect() {}
    func read() {}
    func write<CMD>(cmd: CMD) {}
}

class NFC<TypeDeChiffrement>:WirelessProtocol {
    var systemeDeChiffrement:TypeDeChiffrement? = nil
    init(chiffrement:TypeDeChiffrement) {
        systemeDeChiffrement = chiffrement
    }
    
    func scan() {}
    func connect() {}
    func disconnect() {}
    func read() {}
    func write<CMD>(cmd: CMD) {}
}

class Store<TypeDeComSansFil> {
    var systemDeComSansFil:TypeDeComSansFil
    init(sys:TypeDeComSansFil) {
        systemDeComSansFil = sys
    }
}

class Lock<TypeDeComSansFil> {
    var systemDeComSansFil:TypeDeComSansFil
    init(sys:TypeDeComSansFil) {
        systemDeComSansFil = sys
    }
}

enum StoreCommands:String{
    case open = "ça ouvre un max"
    case close = "ça ferme un max"
}

enum LockCommands:String{
    case unlock = "ça déverouille un max"
    case lock = "ça verouille un max"
}

let wifi = Wifi<AES256>(chiffrement: AES256())
let ble = BLE<AES128>(chiffrement: AES128())
let nfc = NFC<AES256>(chiffrement: AES256())

let store = Store<Wifi>(sys: wifi)
store.systemDeComSansFil.systemeDeChiffrement?.cipher()

let lock = Lock<NFC>(sys: nfc)
lock.systemDeComSansFil.write(cmd: LockCommands.unlock)













//: [Next](@next)
