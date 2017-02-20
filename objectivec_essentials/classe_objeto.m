//
//  main.m
//  TesteObjC
//
//  Created by Gustavo Calixto on 19/02/17.
//  Copyright © 2017 Gustavo Calixto. All rights reserved.
//

//Exemplo 13 - Classes e Objetos


#import <Foundation/Foundation.h>

//Definicao da classe
@interface Retangulo : NSObject
{
    //Variaveis instanciadas dentro do objeto, permitindo o encapsulamento das mesmas
    //São diretamente visualizadas na implementacão e podem ser expostas por métodos
    int area;
}

//Propriedades (atributos)
//readonly acesso privado, readwrite acesso publico
//nonatomic permite que mais de uma thread acesse sua variável, necessitando geranciar acessos multhreading
@property(nonatomic,readonly) float a;
@property(nonatomic,readonly) float b;

//Assinatura dos métodos
-(void)setA:(float)_a;
-(void)setB:(float)_a;
-(void)setAB:(float)_a outroLado:(float)_b;
-(float)getA;
-(float)getB;
-(float)getArea;

@end

//bloco de implementação
@implementation Retangulo


//permite acesso às propriedades da classe instanciada (cria setter e getters)
@synthesize a;
@synthesize b;

//metodos implementados
-(void)setA:(float)_a{
    a = _a;
}

-(void)setB:(float)_b{
    b = _b;
}

-(void)setAB:(float)_a outroLado:(float)_b{
    a = _a;
    b = _b;
}

-(float)getA{
    return a;
}

-(float)getB{
    return b;
}

-(float)getArea{
    area = a * b;
    return area;
}

@end

int main(int argc, const char * argv[]) {

    //bloco que faz a operação de garbage collector
    @autoreleasepool {
        Retangulo *r = [[Retangulo alloc]init];
        
        //executando metodos do objeto [objeto metodo:arg1 label2:arg2 labe3:arg3...])
        [r setA:2.0f];
        [r setB:2.0f];
        
        NSLog(@"Lado A %.2f",[r getA]);
        NSLog(@"Lado A %.2f",[r getB]);
        NSLog(@"Area %.2f",[r getArea]);
        
        [r setAB:4.0f outroLado:4.0f];
        
        NSLog(@"Lado A %.2f",[r getA]);
        NSLog(@"Lado A %.2f",[r getB]);
        NSLog(@"Area %.2f",[r getArea]);
    }
    
    return 0;
}
