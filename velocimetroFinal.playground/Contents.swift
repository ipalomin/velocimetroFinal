//: Playground - noun: a place where people can play

import UIKit


enum Velocidades : Int{
    
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

class Auto{
    
    var velocidad : Velocidades
    
    
    init(){
        
        velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    
    func cambioDeVelocidad()->(actual:Int, velocidadEnCadena:String){
        var velocidadString : String = ""
        
        if velocidad.rawValue == 0 {
            
            velocidad = Velocidades(velocidadInicial: Velocidades.VelocidadBaja)
            velocidadString = "Velocidad baja"
        }
        else if velocidad.rawValue == 20{
            velocidad = Velocidades(velocidadInicial: Velocidades.VelocidadMedia)
            velocidadString = "Velocidad Media"
        }
        else if velocidad.rawValue == 50{
            velocidad = Velocidades(velocidadInicial: Velocidades.VelocidadAlta)
            velocidadString = "Velocidad Alta"
        }
        else if velocidad.rawValue == 120 {
            velocidad = Velocidades(velocidadInicial: Velocidades.VelocidadMedia)
            velocidadString = "Velocidad Media"
        }
        
        return (velocidad.rawValue, velocidadString)
    }
}

var carro = Auto()

for var i = 0 ; i < 20; i++
{
    var tupla = carro.cambioDeVelocidad()
    print(tupla.actual,  tupla.velocidadEnCadena)
}


