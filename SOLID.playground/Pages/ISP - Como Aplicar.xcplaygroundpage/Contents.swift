protocol BankProcess {
    func extract() -> String
}

protocol ATMProcess {
    func withDraw(value:Double)
    func cashDeposit(value:Double)
}


class ATM:BankProcess,ATMProcess{
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
    func extract() -> String{
        return "R$ 90,00"
    }
}

//: Vamos para o próximo Princípio:
//: [DIP - Conceito](@next)
