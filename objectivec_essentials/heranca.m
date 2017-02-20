//
//  main.m
//  TesteObjC
//
//  Created by Gustavo Calixto on 19/02/17.
//  Copyright © 2017 Gustavo Calixto. All rights reserved.
//

//Exemplo 14 - Herança


#import <Foundation/Foundation.h>


//classe base
@interface Veiculo : NSObject{
    
    NSString *marca;
    NSString *modelo;
    
}

-(id)init:(NSString *)_marca modelo:(NSString *)_modelo;
-(NSString *)getMarca;
-(NSString *)getModelo;


@end

@implementation Veiculo

-(id)init:(NSString *)_marca modelo:(NSString *)_modelo{
    marca = _marca;
    modelo = _modelo;
    return self;
}

-(NSString *)getMarca{
    return marca;
}
-(NSString *)getModelo{
    return modelo;
}

@end


//classe derivada (herdando todos os membros da classe base)
@interface Automovel : Veiculo{
    
    float motor;
    NSString *tipoAuto;
}

-(id)init:(NSString *)_marca modelo:(NSString *)_modelo motor:(float)_motor tipoAuto:(NSString *)_tipoAuto;
-(float)getMotor;
-(NSString *) getTipoAuto;

@end

@implementation Automovel

-(id)init:(NSString *)_marca modelo:(NSString *)_modelo motor:(float)_motor tipoAuto:(NSString *)_tipoAuto{
 
    marca = _marca;
    modelo = _modelo;
    motor = _motor;
    tipoAuto = _tipoAuto;
    return self;
}

-(float)getMotor{
    return motor;
}
-(NSString *) getTipoAuto{
    return tipoAuto;
}

@end

int main(int argc, const char * argv[]) {

    //bloco que faz a operação de garbage collector
    @autoreleasepool {
        
        //instanciando objeto a partir de classe derivada
        Automovel *a = [[Automovel alloc] init:@"Gol" modelo:@"VW" motor:1.6f tipoAuto:@"Hatch"];
        NSLog(@"Nome: %@",[a getMarca]);
        NSLog(@"Nome: %@",[a getModelo]);
        NSLog(@"Nome: %.2f",[a getMotor]);
        NSLog(@"Nome: %@",[a getTipoAuto]);
    }
    
    return 0;
}
