//
//  Parte1.swift
//  Ejercicios
//
//  Created by Ainhoa  on 8/4/25.
//

import Foundation

public class Ejercicio1{
    
    public func ejercicio1(){
        print("***********")
        print("EJERCICIO 1")
        print("***********")
        print("Escribe el primer número:")
        var numero = readLine()!
        let numero1 = Int(numero)!
        print("Escribe el segundo número:")
        numero = readLine()!
        let numero2 = Int(numero)!
        let resultado = numero1+numero2
        print("El resultado de la suma de \(numero1) y \(numero2) es \(resultado)")
        
    }

    public func ejercicio2(){
        print("***********")
        print("EJERCICIO 2")
        print("***********")
        print("Escribe el primer número:")
        var numero = readLine()!
        let numero1 = Double(numero)!
        print("Escribe el segundo número:")
        numero = readLine()!
        let numero2 = Double(numero)!
        let resultado = numero2-numero1
        print("El resultado de la resta de \(numero1) y \(numero2) es \(resultado)")
    }

    public func ejercicio3(){
        print("***********")
        print("EJERCICIO 3")
        print("***********")
        print("Escribe el primer número(tiene que ser un entero):")
        var numero = readLine()!
        let numero1 = Int(numero)!
        print("Escribe el segundo número:")
        numero = readLine()!
        let numero2 = Double(numero)!
        let resultado = Double(numero1) * numero2
        print("El resultado de la multiplicación de \(numero1) y \(numero2) es \(resultado)")
    }

    public func ejercicio4(){
        print("***********")
        print("EJERCICIO 4")
        print("***********")
        print("Escribe el primer número(tiene que ser un entero):")
        var numero = readLine()!
        let numero1 = Int(numero)!
        print("Escribe el segundo número(también tiene que ser un entero):")
        numero = readLine()!
        let numero2 = Int(numero)!
        let resultado = numero1 / numero2
        print("El resultado de la división entre \(numero1) y \(numero2) es \(resultado)")
        print()
        print("Escribe el primer número:")
        numero = readLine()!
        let numero3 = Double(numero)!
        print("Escribe el segundo número:")
        numero = readLine()!
        let numero4 = Double(numero)!
        let resultado2 = numero3 / numero4
        print("El resultado de la división entre \(numero3) y \(numero4) es \(resultado2)")
        
    }

    public func ejercicio5(){
        print("***********")
        print("EJERCICIO 5")
        print("***********")
        print("Escribe el primer número(tiene que ser un entero):")
        var numero = readLine()!
        let numero1 = Int(numero)!
        print("Escribe el segundo número(también tiene que ser un entero):")
        numero = readLine()!
        let numero2 = Int(numero)!
        let resultado = numero1 % numero2
        print("El resto de la división entre \(numero1) y \(numero2) es \(resultado)")
    }

    public func ejercicio6(){
        print("***********")
        print("EJERCICIO 6")
        print("***********")
        print("Escribe el primer número(tiene que ser un entero):")
        var numero = readLine()!
        let numero1 = Int(numero)!
        print("Escribe el segundo número(también tiene que ser un entero):")
        numero = readLine()!
        let numero2 = Int(numero)!
        print("Escribe el tercer número(también tiene que ser un entero):")
        numero = readLine()!
        let numero3 = Int(numero)!
        var resultado = (numero1 + numero2) * numero3
        print("El resultado de la suma de \(numero1) y \(numero2) es \(numero1 + numero2) y multiplicado por \(numero3) es \(resultado)")
    }

    public func ejercicio7(){
        print("***********")
        print("EJERCICIO 7")
        print("***********")
        print("Escribe el primer número:")
        var numero = readLine()!
        let numero1 = Double(numero)!
        print("Escribe el segundo número:")
        numero = readLine()!
        let numero2 = Double(numero)!
        print("Escribe el tercer número:")
        numero = readLine()!
        let numero3 = Double(numero)!
        var promedio = (numero1 + numero2 + numero3) / 3
        print("El promedio de estos tres números \(numero1),\(numero2),\(numero3) es \(promedio)")
    }

    public func ejercicio8(){
        print("***********")
        print("EJERCICIO 8")
        print("***********")
        print("Escribe el primer número:")
        var numero = readLine()!
        let numero1 = Double(numero)!
        print("Escribe el segundo número:")
        numero = readLine()!
        let numero2 = Double(numero)!
        let resultado = pow(numero1, numero2)
        print("El resultado de \(numero1) elevado a \(numero2) es \(resultado)")
    }

    public func ejercicio9(){
        print("***********")
        print("EJERCICIO 9")
        print("***********")
        print("Escribe el número:")
        var numero = readLine()!
        let numero1 = Double(numero)!
        let resultado = sqrt(numero1)
        print("La raíz cuadrada de \(numero1) es \(resultado)")
    }

    public func ejercicio10(){
        print("************")
        print("EJERCICIO 10")
        print("************")
        print("Escribe el número(tiene que ser un entero):")
        var numero = readLine()!
        let numero1 = Int(numero)!
        if((numero1 % 2) == 0 ){
            print("Es par")
        }else{
            print("Es impar")
        }
    }

    public func ejercicio11(){
        print("************")
        print("EJERCICIO 11")
        print("************")
        print("Escribe los grados Celsius que quieres cambiar a Fahrenheit:")
        var numero = readLine()!
        let gradosC = Double(numero)!
        var gradosF = (gradosC * 9 / 5) + 32
        print("\(gradosC) grados Celsius a Fahrenheit son \(gradosF)")
    }

    public func ejercicio12(){
        print("************")
        print("EJERCICIO 12")
        print("************")
        print("Escribe el radio del círculo:")
        var numero = readLine()!
        let radio = Double(numero)!
        var area = Double.pi * pow(radio, 2)
        print("El área de un círculo de \(radio) es \(area)")
    }

    public func ejercicio13(){
        print("************")
        print("EJERCICIO 13")
        print("************")
        print("Escribe los segundos:")
        var numero = readLine()!
        var segundosIni = Int(numero)!
        var minutos = segundosIni / 60
        segundosIni = segundosIni - (minutos * 60)
        print("Son \(minutos) minutos y \(segundosIni) segundos")
    }

    public func ejercicio14(){
        print("************")
        print("EJERCICIO 14")
        print("************")
        print("Escribe el precio inicial del producto:")
        var numero = readLine()!
        let precioOri = Double(numero)!
        print("Escribe el porcentaje de descuento:")
        numero = readLine()!
        let descuento = Double(numero)!
        var precioFin = precioOri - ((precioOri * descuento) / 100)
        print("El precio original era de \(precioOri) pero con un descuento de \(descuento)% el precio es \(precioFin)")
    }

    public func ejercicio15(){
        print("************")
        print("EJERCICIO 15")
        print("************")
        print("Escribe el sueldo base:")
        var numero = readLine()!
        let sueldoBase = Double(numero)!
        var sueldoFin = sueldoBase + ((sueldoBase * 10) / 100)
        print("El sueldo base era de \(sueldoBase) pero con un aumento de un 10% el sueldo es \(sueldoFin)")
        
    }

}
