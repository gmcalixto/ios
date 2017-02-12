//
//  constantes.m
//  TesteObjC
//
//  Created by Gustavo Calixto on 12/02/17.
//  Copyright © 2017 Gustavo Calixto. All rights reserved.
//

//Exemplo 3 - Constantes

#import <Foundation/Foundation.h>

//declaração de constantes por definição de compilação
#define IDADE 17
#define ANO 2000

int main(int argc, const char * argv[]) {

    //declaracao de constantes como variáveis
    const int x = 10;
    
    //meu primeiro programa em Objective-C
    NSLog(@"\nIdade = %d",IDADE);
    NSLog(@"\nNasceu em = %d",ANO);
    NSLog(@"\nX = %d",x);
    return 0;
}