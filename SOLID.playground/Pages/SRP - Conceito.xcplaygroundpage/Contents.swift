//: # The Single Responsibility Principle (SRP) (Principio da Responsabilidade Única)
//: ### Definição: Uma classe deve ter um, e somente um, motivo para mudar.
//: Vamos observar o seguinte trecho de código:
import Foundation

class TwitterManager{
    fileprivate func request() -> Data{
        // Faz sua requisição para a API do Twitter
        return Data()
    }
    
    fileprivate func convertJsonToModel(with data: Data) -> [AnyObject]{
        // Faz o parse do seu JSON
        return [AnyObject]()
    }
    
    fileprivate func saveInCoreData(with models: [AnyObject]){
        // Salva o modelo no seu core data
    }
    
    public func create(){
        let data = request()
        let model = convertJsonToModel(with: data)
        saveInCoreData(with: model)
    }
}

/*:
 ## Qual o problema do código acima?
 Como podemos perceber, a classe acima apresenta muitas responsabilidades desde do Request para seu
 endPoint até salvar localmente da Banco de Dados Local.
 
 Como podemos perceber, a classe acima apresenta muitas responsabilidades desde do Request para seu
 endPoint até salvar localmente da Banco de Dados Local.
 
 Isso se torna ainda pior caso você utilize por exemplo um Alomofire e CoreData como frameworks.
 
 ## Como podemos resolver esse problema?
 Separando as responsabilidades, criando classes que tenham apenas uma responsabilidade em vez de uma que é a "faz tudo".
 
 Desse modo você mantem a alta coesão e o baixo acoplamento entre as classes, e ainda por cima consegue fazer teste unitários muito mais acertivos, testando diretamento os metódos já que eles não são privados.
 
 
 [SRP - Como Aplicar](@next)
 */
