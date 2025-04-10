//
//  Parte4.swift
//  Ejercicios
//
//  Created by Ainhoa  on 10/4/25.
//

import Foundation

public class Ejercicio4 {
    
    public func ejercicio4_1() {
        print("*************")
        print("EJERCICIO 4_1")
        print("*************")
        print("Introduce un número:")
        if let entrada = readLine() {
            if let num = Int(entrada) {
                print("\(pow(Double(num), 2))")
            }
        } else {
            print("Número no válido")
        }
       
    }
    
    public func ejercicio4_2() {
        print("*************")
        print("EJERCICIO 4_2")
        print("*************")
        print("Introduce una cadena de texto:")
        if let entrada = readLine() {
            let string = entrada
            print(string.count)
        }else {
            print("Cadena vacía")
        }
    }
    
    public func ejercicio4_3() {
        print("*************")
        print("EJERCICIO 4_3")
        print("*************")
        print("Introduce una cadena de texto:")
        if var entrada = readLine() {
            let cadena1 = entrada
            print("Introduce la segunda cadena:")
            if var entrada = readLine() {
                let cadena2 = entrada
                print(cadena1 + cadena2)
            } else {
                print("Cadena vacía")
            }
        } else {
            print("Cadena vacía")
        }
    }
    
    public func ejercicio4_4() {
        print("*************")
        print("EJERCICIO 4_4")
        print("*************")
        print("Introduce un número:")
        if let entrada = readLine() {
            if let num = Int(entrada) {
                print(num * 2)
            } else {
                print("Conversión fallida")
            }
        }

    }
    
    public func ejercicio4_5() {
        print("*************")
        print("EJERCICIO 4_5")
        print("*************")
        var diccionario : [String] = ["A123" , "B345" , "C678" , "D91011" ]
        print("Introduce una clave")
        var encontrada : Bool = false
        if let entrada = readLine() , let clave = Optional(entrada) {
            for i in diccionario {
                if i == clave {
                    print(i)
                    encontrada = true
                }
            }
            if !encontrada {
                print("Clave no encontrada")
            }
        }
        
    }
    
    public func ejercicio4_6() {
        print("*************")
        print("EJERCICIO 4_6")
        print("*************")
        print("Introduce un número:")
        guard let entrada = readLine() , let num = Int(entrada) else{
            print("Número inválido")
            return
        }
        print("Número válido: \(num)")
       
    }
    
    public func ejercicio4_7() {
        print("*************")
        print("EJERCICIO 4_7")
        print("*************")
        print("Introduce tu nombre de usuario:")
        guard var entrada = readLine() , let usuario = Optional(entrada) else {
            print("Credenciales inválidas")
            return
        }
        print("Introduce tu contraseña:")
        guard var entrada = readLine() , let contra = Optional(entrada) else {
            print("Credenciales inválidas")
            return
        }
        print("Acceso concedidio")
      
    }
    
    public func ejercicio4_8() -> Int? {
        print("*************")
        print("EJERCICIO 4_8")
        print("*************")
        print("Introduce el primer número:")
        guard var entrada = readLine() , let num1 = Int(entrada) else {
            return nil
        }
       print("Introduce el segundo número:")
        guard var entrada = readLine() , let num2 = Int(entrada) else {
            return nil
        }
        return (num1 + num2)
    }
    
    public func ejercicio4_9() -> String? {
        print("*************")
        print("EJERCICIO 4_9")
        print("*************")
        print("Introduce una cadena de texto:")
        guard let entrada = readLine() , !entrada.isEmpty else{
            print("Nombre no disponible")
            return nil
        }
        return entrada
    }
    
    public func ejercicio4_10(cadena: [Int]?) {
        print("**************")
        print("EJERCICIO 4_10")
        print("**************")
        guard let numeros = cadena , !(cadena?.isEmpty ?? <#default value#>) else {
            print("Array inválido")
            return
        }
        var suma : Int = 0
        for i in 0...numeros.count {
            suma = suma + numeros[i]
        }
        print(suma)
    }
    
    enum errores : Error {
        case conversionFallida (String)
        case menor (String)
        case archivoNoEncontrado (String)
        case division0 (String)
        case menosCaracteres (String)
    }
    
   
    public func ejercicio4_11() throws -> String {
        print("**************")
        print("EJERCICIO 4_11")
        print("**************")
        print("Introduce un número:")
        guard let entrada = readLine() , let num = Int(entrada) else{
            throw errores.conversionFallida("No se pudo convertir")
        }
    }
    
    public func ejercicio4_12() throws -> String {
        print("**************")
        print("EJERCICIO 4_12")
        print("**************")
        print("Introduce tu edad")
        guard let entrada = readLine() , let num = Int(entrada) , num > 18 else {
            throw errores.menor("No puedes comprar alcohol.")
        }
    }
    
    public func ejercicio4_13() throws -> String {
        print("**************")
        print("EJERCICIO 4_13")
        print("**************")
        print("Introduce la ruta del archivo")
        guard let entrada = readLine() , let ruta = Optional(entrada) else {
            throw errores.archivoNoEncontrado("No se ha encontrado el archivo")
        }
       
    }
    
    public func ejercicio4_14() throws -> String {
        print("**************")
        print("EJERCICIO 4_14")
        print("**************")
        print("Introduce el dividendo: ")
        guard let entrada = readLine() , let dividendo = Int(entrada) else{
            throw errores.division0("No se ha introducido ningún número")
        }
        print("Introduce el divisor: ")
        guard let entrada = readLine() , let divisor = Int(entrada) , divisor != 0 else {
            throw errores.division0("No puedes dividir entre 0")
        }
        print("\(dividendo / divisor)")
    }
    
    public func ejercicio4_15() throws -> String {
        print("**************")
        print("EJERCICIO 4_15")
        print("**************")
        print("Introduce tu contraseña (no puede tener menos de 8 caracteres)")
        guard let entrada = readLine() , let numCaracteres = Optional(entrada.count) , numCaracteres > 8 else {
            throw errores.menosCaracteres("La contraseña tiene que tener más de 8 caracteres.")
        }
    }

}
