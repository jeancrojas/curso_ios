//
//  Tienda.m
//  MapaTiendas
//
//  Created by cice on 7/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "Tienda.h"

@implementation Tienda
@synthesize nombre;
@synthesize tipo;
@synthesize cP;
@synthesize coordX;
@synthesize coordY;

- (Boolean) anyadirTienda: (NSString *)nombreT tipo:(int)tipoT codPostal:(int) cPT coordX:(double) coordXT coordY:(double) coordYT{
    
    nombre = nombreT;
    tipo = tipoT;
    cP = cPT;
    coordX = coordXT;
    coordY = coordYT;
    return YES;
    
}

@end
