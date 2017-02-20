//
//  main.m
//  TesteObjC
//
//  Created by Gustavo Calixto on 19/02/17.
//  Copyright © 2017 Gustavo Calixto. All rights reserved.
//

//Exemplo 15 - Categoria


#import <Foundation/Foundation.h>

@interface NSNumber (SmartNumber)

-(float)getDouble;
-(NSString *)getPrintedNumber;

@end

@implementation NSNumber (SmartNumber)

-(float)getDouble{
    return [(NSNumber*)self floatValue]*2;
}

-(NSString *)getPrintedNumber{
    return [(NSNumber*)self stringValue];
}

@end



int main(int argc, const char * argv[]) {

    //bloco que faz a operação de garbage collector
    @autoreleasepool {
        NSNumber *num = [[NSNumber alloc]initWithFloat:1.2f];
        NSLog(@"Dobro %.2f",[num getDouble]);
        NSLog(@"Printed %@",[num getPrintedNumber]);
        
    }
    
    return 0;
}
