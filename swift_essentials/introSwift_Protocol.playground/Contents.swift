import Foundation

//o protocolo obriga a implementação de propriedades e também de métodos
//as propriedades podem ser somente-leitura {get} ou leitura-escrita {get set}
//a palavra mutating indica que a função necessita implementação na classe que usar o protocolo
protocol Imovel{
    var areaTotal:Float {get set}
    var valorVenal:Float {get set}
    var ano:Int {get set}
    mutating func getTipo() -> String
}


class Apartamento: Imovel{
    var areaTotal:Float
    var valorVenal: Float
    var ano: Int
    
    func getTipo() -> String {
        return "Apartamento"
    }
    
    init(){
        self.ano = 0
        self.valorVenal = 0
        self.areaTotal = 0
    }
}

var imovel1 = Apartamento()

imovel1.ano = 2009
imovel1.areaTotal = 60
imovel1.valorVenal = 102346.44

//uso da função da classe NS String para formatar números em ponto flutuante
let twoDecimalPlaces = NSString(format: "%.2f",imovel1.valorVenal)

print("\(imovel1.getTipo()), Ano: \(imovel1.ano), Area: \(imovel1.areaTotal),Valor: \(twoDecimalPlaces))")

var imovel2 = imovel1

imovel2.areaTotal = 90

print("\(imovel1.getTipo()), Ano: \(imovel1.ano), Area: \(imovel1.areaTotal),Valor: \(twoDecimalPlaces))")

//A struct é instanciada estaticamente, enquanto a clase e instanciada dinamicamente.
//Perceba que a struct ao ser atribuida é gerada cópia, enquanto a classe gera uma única referência

struct Casa : Imovel{
    var areaTotal:Float = 0
    var valorVenal: Float = 0
    var ano: Int = 0
    
    func getTipo() -> String {
        return "Casa"
    }
}

var imovel3 = Casa()
imovel3.ano = 2010
imovel3.areaTotal = 100
imovel3.valorVenal = 202346.44

//teste para ver a diferença entre class e struct
print("\(imovel3.getTipo()), Ano: \(imovel3.ano), Area: \(imovel3.areaTotal),Valor: \(twoDecimalPlaces))")

var imovel4 = imovel3

imovel4.ano = 2011

print("\(imovel3.getTipo()), Ano: \(imovel3.ano), Area: \(imovel3.areaTotal),Valor: \(twoDecimalPlaces))")


protocol Descricao{
    mutating func getDescricao() -> String
}

//a extensão é utilizada quando se deseja ampliar os membros em uma classe já componentizada.
extension Int:Descricao{
    func getDescricao() -> String {
        return "Sou o numero \(self)"
    }
}

let numero = 10

print(10.getDescricao())








