//
//  main.cpp
//  TesteCpp
//
//  Created by Gustavo Calixto on 13/02/17.
//  Copyright © 2017 Gustavo Calixto. All rights reserved.
//

#include <iostream>
#include <cstdio>

using namespace std;

int main(int argc, const char * argv[]) {
    
    struct usuario {
        std::string nome;
        int dia_nasc;
        int mes_nasc;
        int ano_nasc;
    };
    
    //uso de elemento por alocação dinâmica
    struct usuario *aluno = new usuario();
    
    
    //uso do siímbolo -> para acessar elementos da estrutura multivalorada
    aluno->nome = "Maria";
    aluno->dia_nasc = 10;
    aluno->mes_nasc = 10;
    aluno->ano_nasc = 2000;
    
    cout << "\nNome " << aluno->nome;
    cout << "\nDia Nasc " << aluno->dia_nasc;
    cout << "\nMes Nasc " << aluno->mes_nasc;
    cout << "\nAno Nasc " << aluno->ano_nasc <<  endl;
    
    delete aluno;
}
