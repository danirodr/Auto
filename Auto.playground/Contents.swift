//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int {
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades ) {
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades
    
    init () {
        self.velocidad = Velocidades.Apagado
    }
    
    func cambioDeVelocidad() ->  (actual : Int, velocidadEnCadena: String) {
        var result = (actual : self.velocidad.rawValue, velocidadEnCadena: "")
        
        switch self.velocidad {
        case Velocidades.Apagado:
            result.velocidadEnCadena = "Apagado"
            self.velocidad = Velocidades.VelocidadBaja
        case Velocidades.VelocidadBaja:
            result.velocidadEnCadena = "Velocidad Baja"
            self.velocidad = Velocidades.VelocidadMedia
        case Velocidades.VelocidadMedia:
            result.velocidadEnCadena = "Velocidad Media"
            self.velocidad = Velocidades.VelocidadAlta
        case Velocidades.VelocidadAlta:
            result.velocidadEnCadena = "Velocidad Alta"
            self.velocidad = Velocidades.VelocidadMedia
        }
        
        return result
    }
    
    func cambioDeVelocidad(){
    }
}


var auto = Auto()

for (var i = 1; i <= 20; i++) {
    var (actual, velocidadEnCadena) = auto.cambioDeVelocidad()
    
    print ("\(i). \(actual), \(velocidadEnCadena)")
}
