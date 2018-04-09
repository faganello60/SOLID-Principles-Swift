//: # The Open-Closed Principle (OCP) (Princípio Aberto-Fechado)
//: ### Você deve ser capaz de estender um comportamento de uma classe, sem modificá-lo.
//: Vamos observar o seguinte trecho de código:

class Dog{
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

class Cat{
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
        let dogs = [Dog(name: "Rex", isAngry: false),
                    Dog(name: "Max", isAngry: true),
                    Dog(name: "Mad", isAngry: false)]
        for dog in dogs{
            dog.printInfo()
        }
        
        let cats = [Cat(name: "Alberto"),
                    Cat(name: "Dexter"),
                    Cat(name: "Pikachu"),
                    Cat(name: "Dog")]
        for cat in cats{
            cat.printInfo()
        }
    }
}

/*:
 ## Qual o problema do código acima?
 Toda vez que houver a necessidade de adiconar uma nova classe com a função printInfo, vamos precisar alterar a class Logger e isso quebra o príncipio de Aberto e Fechado.
 ## Como podemos resolver esse problema?
 Podemos criar um protocolo que essas classes implemntam que tenha a função printInfo e na classe Logger criaremos um Array com esse protocolo, isso significa que só podem fazer parte deste array, as classes que assinam esse protocolo e desse modo podemos adicionar mais classes sem alterar a função printData.
 Acesse o arquivo OCP que está dentro de SOLID -> Sources -> OCP.swift para visualizar a implementação desee princípio.
 
[OCP - Como Aplicar](@next)
 
 */
