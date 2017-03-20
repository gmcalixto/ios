//: Playground - noun: a place where people can play

import Foundation

var str = "Hello, playground"


//todo erro pode ser elaborado atraves de uma enumeração herdando do protocolo Error
enum TransactionError: Error{
    case NoFunds
    case NoDevice
}


//na chamada da função a palavra throws indica que a função pode retornar um alerta de erro
func doTransaction(deviceName: String?, funds: Float) throws -> String{
    if deviceName == nil{
        throw TransactionError.NoDevice
    }
    else if funds <= 0{
        throw TransactionError.NoFunds
    }
    
    return "done"
}

let device:String? = nil
let _funds:Float = 0.1

do{
    print(try doTransaction(deviceName: device, funds: _funds))
}
catch TransactionError.NoFunds {
    print("Sem fundos!")
}
catch TransactionError.NoDevice{
    print("Sem dispositivo!")
}

//uso do generics - Permite o uso de qualquer tipo de dado na passagem de parâmetro e no retorno da função
//logo ao lado do nome da função, coloca-se a palacra genérica entre "<>"
func repetePalavra<Palavra> (palavra: Palavra, vezes: Int) -> [Palavra]{
    var resposta = [Palavra]()
    
    for _ in 0..<vezes{
        resposta.append(palavra)
    }
    
    return resposta
}

print(repetePalavra(palavra: "Toc", vezes: 10))
print(repetePalavra(palavra: 10, vezes: 10))


