//exemplo de enumeração

enum Mes{
    case Janeiro, Fevereiro, Marco, Abril, Maio
    case Junho, Julho, Agosto, Setembro, Outubro
    case Novembro, Dezembro
    
    // veja que é possível definir funções para enumerações
    //o proprio valor de uma variavel pode ser usado com a palavra "self"
    func getNumeroDias(ano: Int) -> Int{
        switch self{
        case .Janeiro, .Marco, .Maio, .Julho, .Agosto, .Outubro, .Dezembro:
                return 31
        case .Abril, .Junho, .Setembro, .Novembro:
                return 30
        case .Fevereiro:
                if (ano % 4) == 0{
                    return 29
                }
                else{
                    return 28
                }
        }
    }
    
}

var mesAniversario = Mes.Fevereiro
var mesCasamento = Mes.Dezembro


print("O mes de aniversario tem \(mesAniversario.getNumeroDias(ano: 2016))")
print("O mes de casamento tem \(mesCasamento.getNumeroDias(ano: 2016))")


//exemplo de enumeração com elementos parametrizáveis
//veja que Sucesso e Falha dependem de alimentar parâmetros para serem utilizados
enum Mensagem{
    case Sucesso(String, String)
    case Falha(String,String)
    
    func getStatus() -> String{
        switch self{
        case let .Falha(msg, time):
            return "Falha: \(msg), \(time)"
        case let .Sucesso(msg, time):
            return "Sucesso: \(msg), \(time)"
        }
    }
}

var msg1 = Mensagem.Sucesso("Mensagem Entregue","8:00AM")
var msg2 = Mensagem.Falha("Erro","9:30PM")

print(msg1.getStatus())
print(msg2.getStatus())




