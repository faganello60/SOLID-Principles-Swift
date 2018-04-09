//: # The Liskov Substitution Principle (LSP) (Princípio da Substituição de Liskov)
//: ### As classes base devem ser substituíveis por suas classes derivadas.
//: Vamos observar o seguinte trecho de código:


class Rectangle {
    var width: Float = 0
    var length: Float = 0
    var area: Float {
        return width * length
    }
}

class Square: Rectangle {
    
    override var width: Float {
        didSet {
            length = width
        }
    }
}

func printArea(of rectangle: Rectangle) {
    rectangle.width = 2
    rectangle.length = 5
    print(rectangle.area)
}

let rectangle = Rectangle()
printArea(of: rectangle)

let square = Square()
printArea(of: square)
