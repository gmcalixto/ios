//
//  ponteiros.m
//  TesteObjC
//
//  Created by Gustavo Calixto on 12/02/17.
//  Copyright © 2017 Gustavo Calixto. All rights reserved.
//

//Exemplo 10 - Ponteiros


#import <Foundation/Foundation.h>


int main(int argc, const char * argv[]) {

    int i = 10;
    
    //declaracao do ponteiro (*) e uso do caractere (&) para indicar extracao do endereco da variavel
    int *p = &i;
    
    printf("Valor do endereço de i = %x\n",p);
    printf("Valor apontado no endereço de p (conteudo de i) = %d\n",*p);
    
    //uso de ponteiros em vetores (a atribuicao do vetor ao ponteiro entrega o endereco da primeira posicao)
    int vetor[] = {1,2,3,4,5};
    int *pvetor = vetor;
    
    //Descolocamento nos endereços do vetor para acessar os elementos
    printf("\nPosição 0 do vetor = %i",*(pvetor));
    printf("\nPosição 1 do vetor = %i",*(pvetor+1));
    printf("\nPosição 2 do vetor = %i",*(pvetor+2));
    printf("\nPosição 3 do vetor = %i",*(pvetor+3));
    printf("\nPosição 4 do vetor = %i",*(pvetor+4));
}
