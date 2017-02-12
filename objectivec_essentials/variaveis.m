//
//  variaveis.m
//  TesteObjC
//
//  Created by Gustavo Calixto on 12/02/17.
//  Copyright © 2017 Gustavo Calixto. All rights reserved.
//

//Exemplo 2 - Variaveis

#import <Foundation/Foundation.h>

//declaracao de variavel global
int d = 30;

int main(int argc, const char * argv[]) {

    //declaracao de variaveis locais
    int a = 10;
    int b = 20;
    int c;
    
    //atribuição de valores
    c=a+b;
    
    //meu primeiro programa em Objective-C
    NSLog(@"\nSoma de A + B = %d",c);
    NSLog(@"\nSoma de A + B + D = %d",c + d);
    return 0;
}
