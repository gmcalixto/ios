//
//  operadores.m
//  TesteObjC
//
//  Created by Gustavo Calixto on 12/02/17.
//  Copyright © 2017 Gustavo Calixto. All rights reserved.
//

//Exemplo 4 - Operadores

#import <Foundation/Foundation.h>


int main(int argc, const char * argv[]) {

    //declaracao de variaveis locais
    int a = 20;
    int b = 10;
    int c;
    
    //Operadores Aritméticos
    
    //soma de valores
    c=a+b;
    NSLog(@"\nA + B = %d",c);
    
    //subtração de valores
    c=a-b;
    NSLog(@"\nA - B = %d",c);
    
    //multiplicação de valores
    c=a*b;
    NSLog(@"\nA * B = %d",c);
    
    //resultado da divisão de valores
    c=a/b;
    NSLog(@"\nA / B = %d",c);
    
    //resto da divisão de valores
    c=a%b;
    NSLog(@"\nA %% B = %d",c);
    
    //Operadores Relacionais
    
    //igual
    c=a==b;
    NSLog(@"\nA == B = %d",c);
    
    //diferente
    c=a!=b;
    NSLog(@"\nA != B = %d",c);
    
    //maior
    c=a>b;
    NSLog(@"\nA > B = %d",c);
    
    //menor
    c=a<b;
    NSLog(@"\nA < B = %d",c);
    
    //maior ou igual
    c=a>=b;
    NSLog(@"\nA >= B = %d",c);
    
    //menor ou igual
    c=a<=b;
    NSLog(@"\nA <= B = %d",c);
    
    
    bool x = 0;
    bool y = 1;
    
    //Operadores Lógicos
    
    
    //Operador E
    c=x&&y;
    NSLog(@"\nX && Y = %d",c);
    
    //Operador OU
    c=x||y;
    NSLog(@"\nX || Y = %d",c);
    
    //Operador NÃO
    c=!x;
    NSLog(@"\n!X = %d",c);
    
    return 0;
}
