//
//  funcoes.m
//  TesteObjC
//
//  Created by Gustavo Calixto on 12/02/17.
//  Copyright © 2017 Gustavo Calixto. All rights reserved.
//

//Exemplo 7 - Funções

#import <Foundation/Foundation.h>

//função desenvolvida baseada em linguagem C
int soma(int a, int b){
    return a+b;
}

//declaração da assinatura da função e implementação posterior
int subtracao(int,int);

int main(int argc, const char * argv[]) {

    printf("\nSoma de 2 mais 3 = %d\n",soma(2,3));
    printf("Subtracao de 2 menos 3 = %d\n",subtracao(2, 3));

}

//implementação da função declarada
int subtracao(int a,int b){
    return a-b;
}