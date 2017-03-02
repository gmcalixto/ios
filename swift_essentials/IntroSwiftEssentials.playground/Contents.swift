//: Playground - noun: a place where people can play

//declaração de variáveis

print("Hello World!")

var myVariable = 12
let myConstant = 42

var minhaVariavelInteira = 50
var minhaVariavelFloat = 30.0
var minhaVariavelExplicitaInt:Int = 10
var minhaVariavelExplicitaFloat:Float = 234.1

print("Variavel com casting" + String(minhaVariavelInteira))
print("Variavel Float com barra invertida \(minhaVariavelFloat)")

//vetores

var meuVetorNumerosInt = [10,20,30,40]
var meuVetorVazioExplicito = [String]()


meuVetorVazioExplicito.append("Maria")
meuVetorVazioExplicito.append("Joao")
meuVetorVazioExplicito.append("Mario")
meuVetorVazioExplicito.append("Manoel")



print ("Numero: \(meuVetorNumerosInt)")
print ("Numero: \(meuVetorNumerosInt[0])")

print("Nomes:" + String(describing: meuVetorVazioExplicito))
print("Nome: \(meuVetorVazioExplicito[2])")

print("Elementos: \(meuVetorVazioExplicito.count)")

print(meuVetorVazioExplicito.index(of: "Mario")!)
print(meuVetorVazioExplicito.index(of: "Joao")!)

meuVetorVazioExplicito = []
print("Vetor vazio:" + String(describing: meuVetorVazioExplicito))



//dicionarios

var meuDicionarioImplicito = [
    "Gustavo":"555-1010",
    "Diego":"555-1234",
    "Daniela":"555-4321"]

print("Dicionario Implicito: \(meuDicionarioImplicito["Gustavo"])")
print("Dicionario Implicito: \(meuDicionarioImplicito["Diego"]!)")

var meuDicionarioExplicito = [String:Float]()

meuDicionarioExplicito["cafe"] = 5.00
meuDicionarioExplicito["pao"] = 7.50
meuDicionarioExplicito["leite"] = 9.75


print("Preco do cafe: \(meuDicionarioExplicito["cafe"]!)")

meuDicionarioExplicito = [:]

print("Dicionario vazio: \(meuDicionarioExplicito)")



//estrutura de condição


var valor = 90

if valor > 50
{
    print("Maior")
}
else if (valor % 2) == 0
{
    print("É par")
}
else
{
    print("Ímpar")
}


//estrutura de escolha

var carro = "carro"

switch carro
{
    case "ford": print("Ford")
    case "vw": print("VW")
    case "fiat": print("FIAT")
    case "renault","citroen":
        print("Frances")
        print("Tem a peugeot")
    case let a where a.hasPrefix("ca"):
        print("Alguma coisa")
    default:
        print("Não encontrei")
        print("Tente outra vez")
    
}

//laço for-in

let notas = [7.0, 8.5, 9.5, 10.0, 4.5, 6.0, 9.0]

for nota in notas{
    
    if nota >= 6.0{
        
        print("Aprovado")
    }
    else{
        
        print("Reprovado")
    }
}


//laço for (recomendado)


for count in 0 ..< 10 {
    
    print(count);
}

//laço while

var n = 2

while n < 100 {
    n *= 2;
    
}

print (n);

//laço repeat-while

var m = 2

repeat {
    m *= 2;
} while m < 100

print (m)

//uso do Optional

var nomeOp:String? = nil
var nome:String = "Amador"

//se nomeOp for nulo, usa a variavel nome
print (String(nomeOp ?? nome)!)


nomeOp = "Agnaldo"

//com nomeOp não nulo
print (String(nomeOp ?? nome)!)







