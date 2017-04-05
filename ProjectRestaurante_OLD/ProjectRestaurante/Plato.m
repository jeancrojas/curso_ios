//
//  Plato.m
//  ProjectRestaurante
//
//  Created by cice on 30/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "Plato.h"

@implementation Plato
@synthesize idPlato;
@synthesize nombre;
@synthesize precio;
@synthesize descripcion;
@synthesize idTipoPlato;

-(id)initWithIdPlato:(int) idPlatoI nombre:(NSString *)nombreI precio:(double)precioI descripcion:(NSString *)descripcionI idTipoPlato:(int)idTipoPlatoI {

    idPlato = idPlatoI;
    nombre = nombreI;
    precio = precioI;
    descripcion = descripcionI;
    idTipoPlato = idTipoPlatoI;
    return self;
}



@end
