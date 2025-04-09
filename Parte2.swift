//
//  Parte2.swift
//  Ejercicios
//
//  Created by Ainhoa  on 8/4/25.
//

import Foundation

public class Ejercicio2{
    public func ejercicio2_1() {
        print("*************")
        print("EJERCICIO 2_1")
        print("*************")
        print("Introduce una cadena de texto:")
        var entrada = readLine()!
        let cadena1 = entrada
        print("Introduce otra cadena de texto:")
        entrada = readLine()!
        let cadena2 = entrada
        var resultado = cadena1 + cadena2
        print(resultado)
    }

    public func ejercicio2_2() {
        print("*************")
        print("EJERCICIO 2_2")
        print("*************")
        print("Introduce una cadena de texto:")
        var entrada = readLine()!
        let cadena1 = entrada
        print("Introduce otra cadena de texto:")
        entrada = readLine()!
        let cadena2 = entrada
        print(cadena1 + " " + cadena2)
    }

    public func ejercicio2_3() {
        print("*************")
        print("EJERCICIO 2_3")
        print("*************")
        let nombre = "Ainhoa"
        print("El nombre de \(nombre) tiene \(nombre.count) caracteres")
    }

    public func ejercicio2_4() {
        print("*************")
        print("EJERCICIO 2_4")
        print("*************")
        print("Introduce una cadena de texto que contenga mayúsculas y minúsculas:")
        var entrada = readLine()!
        let texto = entrada
        print("Mayúsculas -> \(texto.uppercased())")
        print("Minúsculas -> \(texto.lowercased())")
    }

    public func ejercicio2_5(){
        print("*************")
        print("EJERCICIO 2_5")
        print("*************")
        let mensaje1="Hola"
        var mensaje2=mensaje1
        if(mensaje1.elementsEqual(mensaje2)){
            print(mensaje1)
        }else{
            print("No son iguales las dos cadenas de texto")
        }
    }

    public func ejercicio2_6(){
        print("*************")
        print("EJERCICIO 2_6")
        print("*************")
        print("Introduce una palabra:")
        let entrada = readLine()!
        let palabra = entrada
        var palabraInversa = ""
        for i in palabra.reversed() {
            palabraInversa = palabraInversa + String(i)
        }
         
        print("Palabra original -> \(palabra) palabra inversa -> \(palabraInversa)")
    }

    public func ejercicio2_7(){
        print("*************")
        print("EJERCICIO 2_7")
        print("*************")
        print("Introduce una cadena de texto:")
        var entrada = readLine()!
        let mensaje1 = entrada
        print("Introduce otra cadena de texto:")
        entrada = readLine()!
        var mensaje2 = entrada
        if(mensaje1.elementsEqual(mensaje2)){
            print("OK")
        }else{
            print("KO")
        }
    }

}
    
