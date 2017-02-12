//
//  estruturas.m
//  TesteObjC
//
//  Created by Gustavo Calixto on 12/02/17.
//  Copyright © 2017 Gustavo Calixto. All rights reserved.
//

//Exemplo 12 - Estruturas (structs)


#import <Foundation/Foundation.h>


int main(int argc, const char * argv[]) {

    //declaração de string inicializada (uso do "@" para indicar string em padrão UNICODE)
    NSString *nomeProf = @"Gustavo";
    NSString *sobrenomeProf = @" Calixto";
    
    //uso de palavra reservada "__unsafe_unretained" para sinalizar uso de ponteiros de objetos em estruturas
    struct DadosProfessor{
        __unsafe_unretained NSString *nome;
        __unsafe_unretained NSString *sobrenome;
        NSInteger numero_aulas;
    };
    
    struct DadosProfessor prof;
    
    prof.nome = nomeProf;
    prof.sobrenome = sobrenomeProf;
    prof.numero_aulas = 40;
    
    NSLog(@"\nNome do Professor = %@",prof.nome);
    NSLog(@"\nSobrenome do Professor = %@",prof.sobrenome);
    NSLog(@"\nNumero de Aulas = %li",(long)prof.numero_aulas);
    
}