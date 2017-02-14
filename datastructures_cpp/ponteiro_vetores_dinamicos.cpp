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
    
    //declaração de vetor por alocação dinanica com o uso do new
    int *vetor_dinamico = new int[5];
    
    vetor_dinamico[0] = 10;
    vetor_dinamico[1] = 20;
    vetor_dinamico[2] = 30;
    vetor_dinamico[3] = 40;
    vetor_dinamico[4] = 50;
    
    //acesso aos elementos do vetor (veja que mesmo dinâmico mas ainda sequencial).
    cout << "\nConteúdo do elemento 0 do vetor = " << vetor_dinamico[0];
    cout << "\nConteúdo do elemento 1 do vetor = " << vetor_dinamico[1];
    cout << "\nConteúdo do elemento 2 do vetor = " << vetor_dinamico[2];
    cout << "\nConteúdo do elemento 3 do vetor = " << vetor_dinamico[3];
    cout << "\nConteúdo do elemento 4 do vetor = " << *(vetor_dinamico+4) << endl;
    
    //como a alocaçào é dinâmica, o desenvolvedor deve cuidar da remoção em memória
    delete [] vetor_dinamico;
    
}