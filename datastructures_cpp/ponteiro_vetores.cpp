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
    
    int vetor[5] = {10,20,30,40,50};
    
    //passagem do endereco do primeiro elemento do vetor
    int *p = vetor;
    
    //acesso sequencial dos elementos do vetor deslocando linearmente nos enderecos
    cout << "\nConteúdo do elemento 0 do vetor = " << *p;
    cout << "\nConteúdo do elemento 0 do vetor = " << *(p+1);
    cout << "\nConteúdo do elemento 0 do vetor = " << *(p+2);
    cout << "\nConteúdo do elemento 0 do vetor = " << *(p+3);
    cout << "\nConteúdo do elemento 0 do vetor = " << *(p+4) << endl;
    
    return 0;
}