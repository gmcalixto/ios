import Foundation;

class Poligono{
    
    //atributos
    var lados:Int = 0
    
    //construtor
    init(lados: Int){
        self.lados = lados
    }
    
    //metodos
    func getDescription() -> String {
        return "Este poligono tem \(self.lados) lados"
    }
}

//instancia do objeto
var triangulo = Poligono(lados: 3)
print(triangulo.getDescription())


//exemplo de heranca
// classe base
class Shape{
    
    var numberOfSides:Int = 0
    var sideSize:Double = 0
    var name:String? = nil
    
    //uso de propriedades
    var perimeter:Double{
        get{
            return 0;
        }
    }
    
    init(sides: Int, size: Double, name: String){
        self.numberOfSides = sides
        self.sideSize = size
        self.name = name
    }
    
    func getArea() -> Double{
        return 0;
    }
    
    
}

//sub classe

class Triangle : Shape{
    
    //uso da palavra super para acessar membros da classe base
    init(sizeT: Double, nameT: String) {
        super.init(sides: 3, size: sizeT, name: nameT)
    }
    
    //veja que propriedades podem ser reescritas e formar polimorfismo
    //newValue:  palavra reservada para valor atribuido no set
    override var perimeter:Double{
        get{
            return super.sideSize * 3
        }
        set{
            super.sideSize = newValue/3
        }
    }
    
    //reescrita da função
    override func getArea() -> Double {
        return (pow(sideSize,2) * sqrt(3))/4
    }
}
    
    
var trig1 = Triangle(sizeT: 10, nameT: "trig1")

trig1.perimeter = 27

print("Lado: \(trig1.sideSize)")
print("Perimentro: \(trig1.perimeter)")
print("Area: \(trig1.getArea())")

