//
//  main.cpp
//  TesteCpp
//
//  Created by Gustavo Calixto on 13/02/17.
//  Copyright © 2017 Gustavo Calixto. All rights reserved.
//

#include <iostream>
#include <cstdio>

using namespace std;

int main(int argc, const char * argv[]) {
    
    int i = 10;
    int *p = &i;
    
    cout << "\nEndereco armazenado em p = " << p;
    cout << "\nConteudo do endereco armazenado em p = " << *p << endl;
    
    return 0;
}