//
//  strings.m
//  TesteObjC
//
//  Created by Gustavo Calixto on 12/02/17.
//  Copyright © 2017 Gustavo Calixto. All rights reserved.
//

//Exemplo 11 - Strings (uso da classe NSString)


#import <Foundation/Foundation.h>


int main(int argc, const char * argv[]) {

    //declaração de string inicializada (uso do "@" para indicar string em padrão UNICODE)
    NSString *nome = @"Gustavo";
    NSString *sobrenome = @" Calixto";
    NSString *nomeCompleto;
    
    
    //uso da mascara %@ para a impressao de string do tipo NSString
    NSLog(@"\nNome do Professor = %@",nome);
    
    //exemplo de alguns metodos modificadores de strings
    
    //concatena duas string (veja a chama da de métodos em Objective-C)
    nomeCompleto = [nome stringByAppendingString: sobrenome];
    NSLog(@"\nNome do Professor Completo = %@",nomeCompleto);
    
    //obtém o número de elementos da String
    NSUInteger len  = [nomeCompleto length];
    NSLog(@"\nTamanho da String = %lu",(unsigned long)len);

}
