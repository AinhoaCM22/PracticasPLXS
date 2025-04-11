//
//  Parte4.swift
//  Ejercicios
//
//  Created by Ainhoa  on 10/4/25.
//

import Foundation

//Creación del protocolos
protocol Saludable {
    func saludar() -> String
}

protocol Vehiculo {
    var velocidad : Double { get  set}
    func acelerar(masVelocidad : Double) -> Double
}

protocol Reiniciable {
    func reiniciar(confirmacion : Bool)
}

protocol Volador {
    func volar()
}

protocol Nadador {
    func nadar()
}

protocol Corredor {
    func correr()
}

protocol DownloadDelegate {
    func descargaTerminada()
}

protocol Actualizable {
    func actualizarPantalla()
}

protocol BotonDelegate {
    func botonPresionado()
}

protocol FormularioDelegate {
    func formularioInvalido()
}

public class Ejercicio4 {
    
    var array : [Int] = [ 1 , 2 , 3 , 4 ]
    public init () {
        ejercicio4_32(array: array)
    }
    
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
        guard let numeros = cadena , !(cadena?.isEmpty ?? false) else {
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
        return "Se pudo convertir \(num)"
    }
    
    public func ejercicio4_12() throws -> String {
        print("**************")
        print("EJERCICIO 4_12")
        print("**************")
        print("Introduce tu edad")
        guard let entrada = readLine() , let num = Int(entrada) , num > 18 else {
            throw errores.menor("No puedes comprar alcohol.")
        }
        return "Eres mayor de edad"
    }
    
    public func ejercicio4_13() throws -> String {
        print("**************")
        print("EJERCICIO 4_13")
        print("**************")
        print("Introduce la ruta del archivo")
        guard let entrada = readLine() , let ruta = Optional(entrada) else {
            throw errores.archivoNoEncontrado("No se ha encontrado el archivo")
        }
        return "Se ha encontrado el archivo"
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
        return "\(dividendo / divisor)"
    }
    
    public func ejercicio4_15() throws -> String {
        print("**************")
        print("EJERCICIO 4_15")
        print("**************")
        print("Introduce tu contraseña (no puede tener menos de 8 caracteres)")
        guard let entrada = readLine() , let numCaracteres = Optional(entrada.count) , numCaracteres > 8 else {
            throw errores.menosCaracteres("La contraseña tiene que tener más de 8 caracteres.")
        }
        return "La contraseña se ha guardado correctamente"
    }
    
    public func ejercicio4_16( dato : Any) {
        print("**************")
        print("EJERCICIO 4_16")
        print("**************")
        guard let string = dato as? String else{
            print("Esto no es un String")
            return
        }
        print(string)
    }
    
    public func ejercicio4_17(datos : [Any]) {
        print("**************")
        print("EJERCICIO 4_17")
        print("**************")
        for i in 0...datos.count {
            switch datos[i] {
                case let texto as String :
                    print("String")
                    break
                case let numero as Int :
                     print("Int")
                break
            case let dec as Double :
                print("Double")
                break
            case let caracter as Character :
                print("caracter")
                break
                
            default:
                print("Otro tipo: \(type(of:datos[i]))")
            }
        }
        
        
    }
    
   /* public func ejercicio4_18(view : UIview) {
      // No se puede importar el UIView no el UILabel
    } */
    
   //Creacion de clases para el ejercicio 4_18
    
    //Creación de la superclase Animal
    
    class Animal {
        
        public func ladrar() {
            
        }
    }
    
    //Creación de la subclase Perro que hereda de Animal
    class Perro : Animal {
        public override func ladrar() {
            print("Guau")
        }
    }
    
    public func ejercicio4_18() {
        print("**************")
        print("EJERCICIO 4_18")
        print("**************")
        
        let animal : Animal = Perro()
        if let perro = animal as? Perro {
            perro.ladrar()
        } else {
            print("No se pudo convertir")
        }
    }
    
    public func ejercicio4_19() {
        print("**************")
        print("EJERCICIO 4_19")
        print("**************")
        let diccionario : [String : Any] = [ "animal" : "gato" , "edad promedio" : 20 , "mamífero" : true , "altura promedio" : 0.23 ]
        
        if let animal = diccionario["animal"] as? String {
            print("Animal : \(animal)")
        }
        
        if let edad = diccionario["edad promedio"] as? Int {
            print("Edad promedio : \(edad)")
        }
        
        if let mamifero = diccionario["mamífero"] as? Bool {
            print("Mamífero : \(mamifero)")
        }
        
        if let altura = diccionario["altura promedio"] as? Double {
            print("Altura promedia : \(altura)")
        }
    }
    
   
    
    class Persona : Saludable {
        
        func saludar() -> String {
            "Hola"
        }
    }

    public func ejercicio4_20() {
        print("**************")
        print("EJERCICIO 4_20")
        print("**************")
        let persona : Persona = Persona()
        print(persona.saludar())
    }
    
    struct Coche : Vehiculo {
        var velocidad: Double = 70.0
        
       func acelerar(masVelocidad : Double) -> Double {
            masVelocidad + velocidad
        }
    }
    
    public func ejercicio4_21() {
        print("**************")
        print("EJERCICIO 4_21")
        print("**************")
        var coche : Coche = Coche()
        coche.velocidad = 70.0
        print(coche.acelerar(masVelocidad: 10.0))
    }
    
    class Juego : Reiniciable {
        func reiniciar(confirmacion: Bool) {
            print("Reiniciando...")
        }
    }
    
    public func ejercicio4_22() {
        print("**************")
        print("EJERCICIO 4_22")
        print("**************")
        let juego : Juego = Juego()
        juego.reiniciar(confirmacion: true)
    }
    
     func ejercicio4_23(volador : Volador) {
         print("**************")
         print("EJERCICIO 4_23")
         print("**************")
         volador.volar()
    }
    
    struct Triatleta : Nadador , Corredor {
        func nadar() {
            print("Nadando...")
        }
        
        func correr() {
            print("Corriendo...")
        }
        
    }
    
    public func ejercicio4_24() {
        print("**************")
        print("EJERCICIO 4_24")
        print("**************")
        let atleta : Triatleta = Triatleta()
        atleta.correr()
        atleta.nadar()
    }
    
    class Descargador {
        var delegado : DownloadDelegate?
        
        func delegar() {
            print("Descargando...")
            delegado?.descargaTerminada()
        }
    }
    
    class Delegado : DownloadDelegate {
        func descargaTerminada() {
            print("La descarga ha terminado")
        }
    }
    
    public func ejercicio4_25() {
        print("**************")
        print("EJERCICIO 4_25")
        print("**************")
        let descarga : Descargador = Descargador()
        let descargaDelegado : Delegado = Delegado()
        descarga.delegar()
    }
    
    class Sensor {
        var delegado : DelegadoSensor?
        
        func cambio() {
            delegado?.actualizarPantalla()
        }
    }
    
    class DelegadoSensor : Actualizable {
        
        func actualizarPantalla() {
            print("Se ha actualizado la pantalla")
        }
    }
    
    public func ejercicio4_26() {
        print("**************")
        print("EJERCICIO 4_26")
        print("**************")
        let sensor : Sensor = Sensor()
        let sensorDelegado : DelegadoSensor = DelegadoSensor()
        sensor.cambio()
    }
    
    class Boton {
        var delegado : BotonDelegado?
        
        func presionar() {
            delegado?.botonPresionado()
        }
    }
    
    class BotonDelegado : BotonDelegate {
        func botonPresionado() {
            print("El botón ha sido presionado")
        }
    }
    
    public func ejercicio4_27() {
        print("**************")
        print("EJERCICIO 4_27")
        print("**************")
        let boton : Boton = Boton()
        let botonDelegado : BotonDelegado = BotonDelegado()
        boton.delegado = botonDelegado
        boton.presionar()
    }
    
    class Formulario {
        var delegadoError : FormularioDelegado?
        
        func validar(nombre : String, contra : String) {
            if (nombre.isEmpty || nombre == nil || contra.isEmpty || contra == nil) {
                delegadoError?.formularioInvalido()
            }else {
                print("Formulario aceptado.")
            }
        }
        
        
    }
    
    class FormularioDelegado : FormularioDelegate {
        func formularioInvalido() {
            print("No se ha podido aceptar este formulario porque hay un error en los datos introducidos")
        }
    }
    
    public func ejercicio4_28() {
        print("**************")
        print("EJERCICIO 4_28")
        print("**************")
        let formularioDelegado : FormularioDelegado = FormularioDelegado()
        let formulario : Formulario = Formulario()
        formulario.delegadoError = formularioDelegado
        formulario.validar(nombre: "Ainhoa", contra: "abc123.")
    }
    
    public func ejercicio4_29() {
        print("**************")
        print("EJERCICIO 4_29")
        print("**************")
        var num1 = 2
        var num2 = 4
        var num = num1
        num1 = num2
        num2 = num
        print(" \(num1) \(num2)")
    }
    
    public func ejercicio4_30< A : Equatable >(array: [A], valorBuscar : A) -> Bool {
        print("**************")
        print("EJERCICIO 4_30")
        print("**************")
        for i in array {
            if (i == valorBuscar) {
                return true
            }
            else{
                return false
            }
        }
        return false
    }
    
    public func ejercicio4_31 < B : Equatable > ( array: [B] ) -> B? {
        print("**************")
        print("EJERCICIO 4_31")
        print("**************")
        return array.first
    }
    
    public func ejercicio4_32 < C : Equatable > ( array : [C] ) {
        print("**************")
        print("EJERCICIO 4_32")
        print("**************")
        print(array)
    }
}
