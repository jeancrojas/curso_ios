//
//  Animal.m
//  AccesoAFicheroObject
//
//  Created by cice on 6/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "Animal.h"

@implementation Animal
@synthesize identificador;
@synthesize nombre;

-(Boolean ) anyadirAnimal:(int)identificadorRecibido End:(NSString *)nombreRecibido {
    self.identificador = identificadorRecibido;
    self.nombre = nombreRecibido;
    return true;
}

@end
