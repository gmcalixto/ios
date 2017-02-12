//
//  vetores.m
//  TesteObjC
//
//  Created by Gustavo Calixto on 12/02/17.
//  Copyright © 2017 Gustavo Calixto. All rights reserved.
//

//Exemplo 8 - Vetores


#import <Foundation/Foundation.h>


int main(int argc, const char * argv[]) {

    //vetor com valores inicializados
    int numeros[10] = {10,20,30,40,50,60,70,80,90,100};
    
    //vetor com valores não inicializados
    float notas[5];
    
    for(int i=0;i<10;i++){
        printf("\nNumero %d = %d",i,numeros[i]);
    }
    
    notas[0]=6.5f;
    notas[1]=7.5f;
    notas[2]=9.75f;
    notas[3]=10.0f;
    notas[4]=3.2f;
    
    for(int i=0;i<5;i++){
        printf("\nNotas %d = %.2f",i,notas[i]);
    }
}
