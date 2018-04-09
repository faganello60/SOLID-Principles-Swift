import Foundation
import UIKit

protocol Log {
    func printInfo() -> String
}

class Dog:Log{
    let name:String
    let isAngry:Bool
    init(name:String, isAngry:Bool) {
        self.name = name
        self.isAngry = isAngry
    }
    
    func printInfo() -> String{
        let angry = self.isAngry ? "sou bravo" : "não sou bravo"
        return "Meu nome é \(name) e eu \(angry)"
    }
}

class Cat:Log{
    let name:String
    init(name:String) {
        self.name = name
    }
    func printInfo() -> String{
        return "Meu nome é \(name)"
    }
}

class Logger {
    func printData(){
        let animals:[Log] = [Dog(name: "Rex", isAngry: false),
                             Dog(name: "Max", isAngry: true),
                             Dog(name: "Mad", isAngry: false),
                             Cat(name: "Alberto"),
                             Cat(name: "Dexter"),
                             Cat(name: "Pikachu"),
                             Cat(name: "Dog")]
        
        for animal in animals{
            print(animal.printInfo())
        }
    }
}

//: Vamos para o próximo Princípio: 
//: [LSP - Conceito](@next)

