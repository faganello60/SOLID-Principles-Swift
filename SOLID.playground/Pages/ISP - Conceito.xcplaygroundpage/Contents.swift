//: # The Interface Segregation Principle (ISP) (Princípio da Segregação da Interface)
//: ### Muitas interfaces específicas são melhores do que uma interface única.
//: Vamos observar o seguinte trecho de código:

protocol BankProcess {
    func withDraw(value:Double)
    func cashDeposit(value:Double)
    func extract() -> String
}


class ATM:BankProcess{
    func withDraw(value:Double){
        //withDraw
    }
    
    func cashDeposit(value:Double){
        // CashDeposit
    }
    
    func extract() -> String{
        return "R$ 30,00"
    }
}

class OnlineBanking:BankProcess{
    func withDraw(value:Double){
        // You cant do it in PC
    }
    
    func cashDeposit(value:Double){
        // You cant do it in PC
    }
    
    func extract() -> String{
        return "R$ 90,00"
    }
}

/*:
 ## Qual o problema do código acima?
 O problema aqui é que o nosso "Banco Online" não pode fazer um saque ou depósito, fazendo com que estes metodos não tenham nenhuma uitilidade nele.
 ## Como podemos resolver esse problema?
 Podemos criar um protocolo para os problemas em comum que seria visualizar um extrato e um outro para operações específicas de cada plataforma.
 Acesse o arquivo OCP que está dentro de SOLID -> Sources -> OCP.swift para visualizar a implementação desee princípio.
 
 [ISP - Como Aplicar](@next)
 */
