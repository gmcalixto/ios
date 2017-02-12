//
//  lacos.m
//  TesteObjC
//
//  Created by Gustavo Calixto on 12/02/17.
//  Copyright © 2017 Gustavo Calixto. All rights reserved.
//

//Exemplo 6 - Laços

#import <Foundation/Foundation.h>


int main(int argc, const char * argv[]) {

	
	int i,x;

    //laço PARA
    for(i=0;i<10;i++){
        printf("\nFOR i = %d",i);
    }
    
    //laço ENQUANTO
    while(x<10){
        printf("\nWHILE i = %d",x);
        x++;
    }
    
    //laço REPITA ATÉ
    do{
        printf("\nDO WHILE i = %d",x);
        x++;
    }while(x<10);

}
