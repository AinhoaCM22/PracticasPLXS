//
//  Parte5.swift
//  Ejercicios
//
//  Created by Ainhoa  on 14/4/25.
//

import Foundation

public class Ejercicio5 {
    public init () {
        ejercicioSet()
        ejercicioOrdenar()
        ejercicioMap()
        ejercicioForEach()
        ejercicioOtrasOpe()
    }
    
    public func ejercicioSet() {
        print("*************")
        print("EJERCICIO 5_1")
        print("*************")
        var miSet : Set<Int> = [1,2,3,4]
        print(miSet)
        
        print("*************")
        print("EJERCICIO 5_2")
        print("*************")
        miSet.insert(3)
        print(miSet)
        
        print("*************")
        print("EJERCICIO 5_3")
        print("*************")
        print(miSet.contains(2))
        
        print("*************")
        print("EJERCICIO 5_4")
        print("*************")
        miSet.remove(2)
        print(miSet)
        
        print("*************")
        print("EJERCICIO 5_5")
        print("*************")
        var miSet2 : Set<Int> = [ 6 , 7 , 8 , 9]
        miSet.formUnion(miSet2)
        print(miSet)
    }
    
    public func ejercicioOrdenar() {
        print("*************")
        print("EJERCICIO 5_6")
        print("*************")
        var miArray =  [ 5 , 2 , 8 , 4 , 9 ]
        miArray.sort()
        print(miArray)
        
        print("*************")
        print("EJERCICIO 5_7")
        print("*************")
        miArray.sort {
            ( intA , intB ) -> Bool in
            return intA > intB
        }
        print(miArray)
        
        print("*************")
        print("EJERCICIO 5_8")
        print("*************")
        var miArrayOrd =  miArray.sorted()
        print(miArrayOrd)
        
        print("*************")
        print("EJERCICIO 5_9")
        print("*************")
        var miArrayAlf = [ "Maraca" , "Peluca" , "Tienda" , "Hoja" ]
        print(miArrayAlf.sorted())
        
        print("**************")
        print("EJERCICIO 5_10")
        print("**************")
        miArrayAlf.sort {
            ( stringA , stringB ) -> Bool in
            return stringA.count > stringB.count
        }
        print(miArrayAlf)
    }
    
    public func ejercicioMap() {
        print("**************")
        print("EJERCICIO 5_11")
        print("**************")
        var miArrayNum = [ 23 , 4 , 2 , 67 , 8]
        let miMapaNum = miArrayNum.map {
            ( myInt ) -> Int in
            return myInt * 2
        }
        print(miMapaNum)
        print("**************")
        print("EJERCICIO 5_12")
        print("**************")
        var miArrayAlf = [ "persona" , "caballo" , "palo" , "alga"]
        let miMapaAlf = miArrayAlf.map {
            ( string ) -> String in
            return string.uppercased()
        }
        print(miMapaAlf)
        
        print("**************")
        print("EJERCICIO 5_13")
        print("**************")
        let miMapaAlfaNum = miMapaNum.map {
            ( myint ) -> String in
            return "Número : \(myint)"
        }
        print(miMapaAlfaNum)
        
        print("**************")
        print("EJERCICIO 5_14")
        print("**************")
        let miMapaCaracter = miArrayAlf.map {
            ( string ) -> Int in
            return string.count
        }
        print(miMapaCaracter)
        print("**************")
        print("EJERCICIO 5_15")
        print("**************")
        let miMapaSuma = miArrayNum.map {
            ( myInt ) -> Int in
            return myInt + 5
        }
        print(miMapaSuma)
    }
    
    public func ejercicioForEach() {
        print("**************")
        print("EJERCICIO 5_16")
        print("**************")
        var miArray = [ 2 , 3 , 1 , 9 , 10]
        miArray.forEach {
            ( myInt ) in print(myInt)
        }
        print("**************")
        print("EJERCICIO 5_17")
        print("**************")
        miArray.forEach {
            ( myInt ) in print( myInt * 2)
        }
        
        print("**************")
        print("EJERCICIO 5_18")
        print("**************")
        var miArrayNombres = [ "Ainhoa" , "Paula" , "Brais" , "Manolo" ]
        miArrayNombres.forEach {
            ( string ) in print("Hola \(string)")
        }
        
        print("**************")
        print("EJERCICIO 5_19")
        print("**************")
        miArray.enumerated().forEach {
            ( index , myInt ) in print("\(index) : \(myInt)")
        }
        
        print("**************")
        print("EJERCICIO 5_20")
        print("**************")
        var miDiccionario = [ 1 : "Libro" ,
                              2 : "Carpeta" ,
                              3 : "Cuaderno",
                              4 : "Lápiz" ]
        miDiccionario.forEach{
            ( myElement ) in print("\(myElement.key) : \(myElement.value)")
        }
    }
    
    public func ejercicioOtrasOpe () {
        print("**************")
        print("EJERCICIO 5_21")
        print("**************")
        var miArray = [ 3 , 9 , 4 , 6 , 1 , 2 ]
        let miArrayPar = miArray.filter {
            $0 % 2 == 0
        }
        print(miArrayPar)
        print("**************")
        print("EJERCICIO 5_22")
        print("**************")
        let suma = miArray.reduce(0) {
            acumulador , num in acumulador + num
        }
        print(suma)
        print("**************")
        print("EJERCICIO 5_23")
        print("**************")
        var miArrayPalabras = [ "casa" , "montaña" , "playa" , "costa" , "ciudad" , "mar"]
        let contador = miArrayPalabras.filter {
            $0.count > 4
        }.count
        print(contador)
        
        print("**************")
        print("EJERCICIO 5_24")
        print("**************")
        var miArrayAlfaNum = [ "3" , "casa" , "pelota" , "9"]
        let miArrayInt = miArrayAlfaNum.filter {
            Int($0) != nil
        }
        print(miArrayInt)
        
        print("**************")
        print("EJERCICIO 5_25")
        print("**************")
        let miDiccionario = [ 20 : "Juana" , 30 : "María" , 10 : "Pedro" , 90 : "Fina"]
        let miDiccionarioFiltrado = miDiccionario.filter {
            ( clave , valor ) in clave > 25
        }
        print(miDiccionarioFiltrado)
    }
    
   
}
