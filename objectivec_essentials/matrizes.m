//
//  matrizes.m
//  TesteObjC
//
//  Created by Gustavo Calixto on 12/02/17.
//  Copyright © 2017 Gustavo Calixto. All rights reserved.
//

//Exemplo 9 - Matrizes


#import <Foundation/Foundation.h>


int main(int argc, const char * argv[]) {

	int i,j;

    //vetor com valores inicializados
    int matriz1[3][3] = {{1,1,1},{2,2,2},{3,3,3}};
    
    //vetor com valores não inicializados
    int matriz2[2][2];
    
    
    for(i=0;i<3;i++){
        for(j=0;j<3;j++){
            printf("\nNumero na posicao %d,%d = %d",i,j,matriz1[i][j]);
        }
    }
    
    matriz2[0][0] = 1;
    matriz2[0][1] = 1;
    matriz2[1][0] = 0;
    matriz2[1][1] = 0;
    
    printf("\nDeterminante da Matriz 2: %d", matriz2[0][0]*matriz2[1][1] - matriz2[0][1]*matriz2[1][0]);
    
}