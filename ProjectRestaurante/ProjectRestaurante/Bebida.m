//
//  Bebida.m
//  ProjectRestaurante
//
//  Created by cice on 30/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "Bebida.h"

@implementation Bebida

@synthesize idBebida;
@synthesize nombre;
@synthesize precio;
@synthesize descripcion;
@synthesize idTipoBebida;

-(id)initWithIdBebida:(int)idBebidaI nombre:(NSString *)nombreI precio:(double)precioI descripcion:(NSString *)descripcionI idTipoBebida:(int)idTipoBebidaI {
    
    idBebida=idBebidaI;
    nombre = nombreI;
    precio = precioI;
    descripcion = descripcionI;
    idTipoBebida =idTipoBebidaI;

    return self;
}


@end
