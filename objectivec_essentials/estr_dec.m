//
//  estr_dec.m
//  TesteObjC
//
//  Created by Gustavo Calixto on 12/02/17.
//  Copyright © 2017 Gustavo Calixto. All rights reserved.
//

//Exemplo 5 - Estruturas de Decisão

#import <Foundation/Foundation.h>


int main(int argc, const char * argv[]) {

    int a = 30;
    int b = 15;
    
    //estrutura SE
    if(a == b){
        NSLog(@"\nIgual");
    }
    else if(a > b){
        NSLog(@"\nMaior");
    }
    else{
        NSLog(@"\nMenor");
    }
    
    //estrutura ESCOLHA
    switch(a){
        case 15: NSLog(@"\n15"); break;
        case 25: NSLog(@"\n25"); break;
        default: NSLog(@"\nNenhuma das Anteriores"); break;
    }
    
    return 0;
}