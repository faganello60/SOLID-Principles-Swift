import Foundation

class RequestManager {
    func request() -> Data{
        // Faz sua requisição para a API do Twitter
        return Data()
    }
}

class ParseManager{
    func convertJsonToModel(with data: Data) -> [AnyObject]{
        // Faz o parse do seu JSON
        return [AnyObject]()
    }
}

class CoreDataManager{
    fileprivate func saveInCoreData(with models: [AnyObject]){
        // Salva o modelo no seu core data
    }
}

class TwitterManager{
    fileprivate let requestManager:RequestManager
    fileprivate let parse:ParseManager
    fileprivate let coreManager:CoreDataManager
    
    init(requestManager:RequestManager, parseManager:ParseManager, coreManager:CoreDataManager){
        self.requestManager = requestManager
        self.parse = parseManager
        self.coreManager = coreManager
    }
    
    func create(){
        let data = self.requestManager.request()
        let objects = self.parse.convertJsonToModel(with: data)
        coreManager.saveInCoreData(with: objects)
    }
}
//: Vamos para o próximo Princípio: 
//: [OCP - Conceito](@next)
