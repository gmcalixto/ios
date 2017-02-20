//
//  main.m
//  TesteObjC
//
//  Created by Gustavo Calixto on 19/02/17.
//  Copyright © 2017 Gustavo Calixto. All rights reserved.
//

//Exemplo 17 - Protocolos


#import <Foundation/Foundation.h>

//obriga a implementação de métodos e também opcionais
@protocol DataPrinterDelegate
@required

-(NSString*)showObjectData;

@optional

-(int)getObjectDataLength;

@end

@interface Pessoa : NSObject <DataPrinterDelegate>{
    NSString *nome;
    NSString *sobrenome;
}

-(id)init:(NSString*)_nome sobrenome:(NSString *)_sobrenome;
-(void)setNome:(NSString*)_nome;
-(void)setSobrenome:(NSString*)_sobrenome;

@end

//interface adicionando membros em pessoa
//usado somente para classes as quais o código-fonte está disponível
@interface Pessoa ()

-(NSString*)getNomeCompleto;

@end

@implementation Pessoa

-(id)init:(NSString*)_nome sobrenome:(NSString *)_sobrenome{
    nome = _nome;
    sobrenome = _sobrenome;
    return self;
}
-(void)setNome:(NSString*)_nome{
    nome = _nome;
}
-(void)setSobrenome:(NSString*)_sobrenome{
    sobrenome = _sobrenome;
}
-(NSString*)getNomeCompleto{
    return [[nome stringByAppendingString:@" "] stringByAppendingString:sobrenome];
}
-(NSString*)showObjectData{
    return [nome stringByAppendingString:sobrenome];
}

@end




int main(int argc, const char * argv[]) {

    //bloco que faz a operação de garbage collector
    @autoreleasepool {

        Pessoa *p = [[Pessoa alloc]init];
        
        [p setNome:@"Gustavo"];
        [p setSobrenome:@"Calixto"];
        NSLog(@"Nome completo: %@",[p getNomeCompleto]);
        NSLog(@"ObjectData: %@",[p showObjectData]);
        
    }
    
    return 0;
}
