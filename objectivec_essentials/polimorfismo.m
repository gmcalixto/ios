//
//  main.m
//  TesteObjC
//
//  Created by Gustavo Calixto on 19/02/17.
//  Copyright © 2017 Gustavo Calixto. All rights reserved.
//

//Exemplo 14 - Polmorfismo


#import <Foundation/Foundation.h>

//classe base
@interface Poligono : NSObject{
    float area;
}

-(float)getArea;

@end

@implementation Poligono

//método sem implementação
-(float)getArea{
    return 0;
}

@end

@interface Quadrado : Poligono{
    float lado;
}

-(id)init:(float)_lado;
-(float)getLado;

@end

@implementation Quadrado

-(id)init:(float)_lado{
    lado = _lado;
    return self;
}

-(float)getLado{
    return lado;
}

//método reimplementado na classe derivada
-(float)getArea{
    return lado*lado;
}


@end




int main(int argc, const char * argv[]) {

    //bloco que faz a operação de garbage collector
    @autoreleasepool {
        Quadrado *q= [[Quadrado alloc]init:2.0f];
        
        NSLog(@"Quadrado Lado %.2f",[q getLado]);
        NSLog(@"Quadrado Area %.2f",[q getArea]);
        
    }
    
    return 0;
}
