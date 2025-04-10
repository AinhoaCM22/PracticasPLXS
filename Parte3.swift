//
//  Parte3.swift
//  Ejercicios
//
//  Created by Ainhoa  on 9/4/25.
//

import Foundation

public class Ejercicio3{
    
    public func ejercicio3_1() ->Bool {
        print("Introduce un número:")
        guard let entrada = readLine() else { return false }
        let numero = Int(entrada)!
        if numero%2 == 0 {
            return true
        }else{
            return false
        }
    }
 
 
    public func ejercicio3_2() {
        print("************")
        print("EJERCICIO 3_2")
        print("************")
        print("Escribe los grados Celsius que quieres cambiar a Fahrenheit:")
        let numero = readLine() ?? "0"
        let gradosC = Double(numero)!
        var gradosF = (gradosC * 9 / 5) + 32
        print("\(gradosC) grados Celsius a Fahrenheit son \(gradosF)")
    }
 
 
    public func ejercicio3_3() {
        print("*************")
        print("EJERCICIO 3_3")
        print("*************")
        print("Introduce una palabra:")
        let entrada = readLine() ?? ""
        let palabra = entrada
        var palabraInversa = ""
        for i in palabra.reversed() {
            palabraInversa = palabraInversa + String(i)
        }
         
        print("Palabra original -> \(palabra) palabra inversa -> \(palabraInversa)")
    }
 
    public func ejercicio3_4() {
        print("*************")
        print("EJERCICIO 3_4")
        print("*************")
        print("Introduce un número:")
        let entrada = readLine() ?? "0"
        let valor = Double(entrada)!
        if valor>0 {
            print("positivo")
        }else if valor<0 {
            print("negativo")
        }else{
            print("cero")
        }
    }
 
    public func ejercicio3_5() {
        print("*************")
        print("EJERCICIO 3_5")
        print("*************")
        print("Introduce una cadena de texto:")
        let cadena = readLine() ?? ""
        var cantidadVocales: Int = 0
        
            for i in cadena {
                if i=="a" || i=="e" || i=="i" || i=="o" || i=="u" || i=="A" || i=="E" || i=="I" || i=="O" || i=="U" {
                    cantidadVocales=cantidadVocales+1
                }
            }
            print("Cantidad de vocales: \(cantidadVocales)")
    }
 
    public func Ejercicio3_6() {
        print("*************")
        print("EJERCICIO 3_6")
        print("*************")
        let saludo: String = "Ola"
        let saludo1: String = "Hola"
        let saludo2: String = "Adiós"
        let saludo3: String = "Buenos días"
        let saludo4: String = "Buenas tardes"
        let saludo5: String = "Buenas noches"
        let saludo6: String = "¿Cómo estás?"
        
        let numeroSaludo: Int = Int.random(in: 0...6)
        switch numeroSaludo {
        case 0:
            print(saludo)
        case 1:
            print(saludo1)
        case 2:
            print(saludo2)
        case 3:
            print(saludo3)
        case 4:
            print(saludo4)
        case 5:
            print(saludo5)
        case 6:
            print(saludo6)
        default:
            print("algo no fue bien")
        }
    }
 
    public func ejercicio3_7() {
        print("*************")
        print("EJERCICIO 3_7")
        print("*************")
        let numeroAleatorio: Int = Int.random(in: 1...100)
        
        print(numeroAleatorio)
    }
    
    public func ejercicio3_8() {
        print("*************")
        print("EJERCICIO 3_8")
        print("*************")
        let fecha : Date = Date.now
        let fechaFormateada = DateFormatter()
        fechaFormateada.dateFormat = "dd/MM/YYYY"
        let fechaString = fechaFormateada.string(from: fecha)
        print(fechaString)
    }
    
    public func ejercicio3_9() {
        print("*************")
        print("EJERCICIO 3_9")
        print("*************")
        let dado : Int = Int.random(in: 1...6)
        print(dado)
    }
    
    public func ejercicio3_10() {
        print("**************")
        print("EJERCICIO 3_10")
        print("**************")
        let mensaje: String = "Tu puedes"
        let mensaje1: String = "No esperes.Nunca va a ser el momento adecuado"
        let mensaje2: String = "La excelencia no es un acto, es un hábito"
        let mensaje3: String = "Sé tu mismo.Todos los demás ya están ocupados"
        let mensaje4: String = "Las oportunidades no aparecen, las creas"
        let mensaje5: String = "Nunca es demasiado tarde para ser lo que podrías haber sido"
        let mensaje6: String = "Si puedes imaginarlo, puedes hacerlo"
        
        let numeroMensaje: Int = Int.random(in: 0...6)
        switch numeroMensaje {
        case 0:
            print(mensaje)
        case 1:
            print(mensaje1)
        case 2:
            print(mensaje2)
        case 3:
            print(mensaje3)
        case 4:
            print(mensaje4)
        case 5:
            print(mensaje5)
        case 6:
            print(mensaje6)
        default:
            print("algo no fue bien")
        }
    }
    
    public func ejercicio3_11(){
        print("**************")
        print("EJERCICIO 3_11")
        print("**************")
        print("Escribe el primer número:")
        var numero = readLine() ?? "0"
        let numero1 = Int(numero)!
        print("Escribe el segundo número:")
        numero = readLine() ?? "0"
        let numero2 = Int(numero)!
        let resultado = numero1+numero2
        print("El resultado de la suma de \(numero1) y \(numero2) es \(resultado)")
        
    }
    
    public func ejercicio3_12(){
        print("**************")
        print("EJERCICIO 3_12")
        print("**************")
        print("Introduce una cadena de texto:")
        var entrada = readLine() ?? ""
        let cadena1 = entrada
        print("Introduce otra cadena de texto:")
        entrada = readLine() ?? ""
        let cadena2 = entrada
        print("Introduce un separador:")
        entrada = readLine() ?? " "
        var resultado = cadena1 + entrada + cadena2
        print(resultado)
        
    }
    
    public func ejercicio3_13(){
        print("**************")
        print("EJERCICIO 3_13")
        print("**************")
        print("Escribe el primer número:")
        var numero = readLine() ?? "0"
        let numero1 = Double(numero)!
        print("Escribe el segundo número:")
        numero = readLine() ?? "0"
        let numero2 = Double(numero)!
        print("Escribe el tercer número:")
        numero = readLine() ?? "0"
        let numero3 = Double(numero)!
        var promedio = (numero1 + numero2 + numero3) / 3
        print("El promedio de estos tres números \(numero1),\(numero2),\(numero3) es \(promedio)")
    }
    
    public func ejercicio3_14() -> Bool{
        print("**************")
        print("EJERCICIO 3_14")
        print("**************")
        print("Escribe el primer lado:")
        guard var numero = readLine() else {return false}
        let numero1 = Double(numero)!
        print("Escribe el segundo lado:")
        guard var numero = readLine() else {return false}
        let numero2 = Double(numero)!
        print("Escribe el tercer lado:")
        guard var numero = readLine() else {return false}
        let numero3 = Double(numero)!
        if (numero1 + numero2) > numero3 {
            return true
        } else {
            return false
        }
    }
    
    public func ejercicio3_15() {
        print("**************")
        print("EJERCICIO 3_15")
        print("**************")
        print("Escribe el primer número:")
        var numero = readLine() ?? "0"
        let numero1 = Double(numero)!
        print("Escribe el segundo número:")
        numero = readLine() ?? "0"
        let numero2 = Double(numero)!
        print("Escribe el tercer número:")
        numero = readLine() ?? "0"
        let numero3 = Double(numero)!
        let mayor = max(numero1, numero2, numero3)
        print("El número mayor es \(mayor)")
    }
    
    public func ejercicio3_16() {
        print("**************")
        print("EJERCICIO 3_16")
        print("**************")
        print("Introduce tu nombre:")
        let entrada = readLine() ?? "invitado"
        print("Bienvenido \(entrada)")
    }
    
    public func ejercicio3_17() {
        print("**************")
        print("EJERCICIO 3_17")
        print("**************")
        print("Introduce el precio base:")
        var numero = readLine() ?? "0"
        let precioBase = Double(numero)!
        print("Introduce el porcentaje de IVA:")
        numero = readLine() ?? "21"
        let iva = Double(numero)!
        var precioFin = precioBase + ((precioBase * iva) / 100)
        print("El precio base era de \(precioBase) pero con un aumento de un \(iva)% el precio es \(precioFin)")
    }
    
    public func ejercicio3_18() {
        print("**************")
        print("EJERCICIO 3_18")
        print("**************")
        print("Introduce la longitud que quieres la contraseña:")
        let entrada = readLine() ?? "8"
        let longitud = Int(entrada)!
        let caracteres = "qwertyuiopasdfghjklñzxcvbnmQWERTYUIOPASDFGHJKLÑZXCVBNM0123456789!@#$%&/()=?¿,.;:-_"
        var contra = ""
        
        for _ in 0..<longitud {
            let random = Int.random(in: 0..<caracteres.count)
            let caracter = Array(caracteres)[random]
            contra.append(caracter)
        }
        print(contra)
    }
    
    public func ejercicio3_19() {
        print("**************")
        print("EJERCICIO 3_19")
        print("**************")
        print("Introduce el tamaño de un lado:")
        var entrada = readLine() ?? "1"
        let lado = Double(entrada)!
        print("Introduce el tamaño del otro lado(no ponga nada si es un cuadrado):")
        entrada = readLine() ?? "0"
        let lado2 = Double(entrada)!
        var area = 0.0
        if lado2 == 0 {
            area = pow(lado, 2)
        } else {
            area = lado * lado2
        }
        print("El área es \(area)")

    }
    
    public func ejercicio3_20(){
        print("**************")
        print("EJERCICIO 3_20")
        print("**************")
        print("Introduce la cadena de texto en mayúsculas:")
        let entrada = readLine() ?? ""
        let cadena = entrada
        print(cadena.lowercased())
    }
    
    public func ejercicio3_21() -> Int {
        print("**************")
        print("EJERCICIO 3_21")
        print("**************")
        print("Introduce varios numeros separados por comas: ")
        guard let entrada = readLine() else{return 0}
        let string = entrada
        var digitos = string.split(separator: ",").compactMap { Int($0.trimmingCharacters(in: .whitespaces))}
        var suma = 0
        
        for i in 0...digitos.count {
            suma += digitos[i]
        }
        
        return suma
    }
    
    public func ejercicio3_22() -> Int {
        print("**************")
        print("EJERCICIO 3_22")
        print("**************")
        print("Introduce varios numeros separados por comas: ")
        guard let entrada = readLine() else{return 0}
        let string = entrada
        var digitos = string.split(separator: ",").compactMap { Int($0.trimmingCharacters(in: .whitespaces))}
        var max = 0
        
        for i in 0...digitos.count {
            if max < digitos[i]{
                max = digitos[i]
            }
        }
        return max
    }
    
    public func ejercicio3_23() {
        print("**************")
        print("EJERCICIO 3_23")
        print("**************")
        print("Introduce varios numeros separados por comas: ")
        let entrada = readLine() ?? "0"
        let string = entrada
        var digitos = string.split(separator: ",").compactMap { Int($0.trimmingCharacters(in: .whitespaces))}
        var reves : [Int] = []
        var ultimo = digitos.count
        
        for _ in 0...digitos.count {
            reves.append(digitos[ultimo])
            ultimo = ultimo - 1
        
        }
        print(reves)
        
    }
    
    public func ejercicio3_24() {
        print("**************")
        print("EJERCICIO 3_24")
        print("**************")
        print("Introduce varios numeros separados por comas: ")
        var entrada = readLine() ?? "0"
        let string = entrada
        var digitos = string.split(separator: ",").compactMap { Int($0.trimmingCharacters(in: .whitespaces))}
        print("Introduce el número que quieras buscar:")
        entrada = readLine() ?? "0"
        let numB = Int(entrada)!
        var cuenta = 0
        
        for i in 0...digitos.count {
            if i == numB {
                cuenta = cuenta + 1
            }
        }
        print(cuenta)
    }
    
    public func ejercicio3_25() {
        print("**************")
        print("EJERCICIO 3_25")
        print("**************")
        print("Introduce varios numeros separados por comas: ")
        let entrada = readLine() ?? "0"
        let string = entrada
        var digitos = string.split(separator: ",").compactMap { Int($0.trimmingCharacters(in: .whitespaces))}
        var noNegativos : [Int] = []
        
        for i in 0...digitos.count {
            if i >= 0 {
                noNegativos.append(i)
            }
        }
        print(noNegativos)
    }

    
}
