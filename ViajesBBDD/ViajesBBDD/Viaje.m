//
//  Viaje.m
//  ViajesBBDD
//
//  Created by cice on 22/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "Viaje.h"

@implementation Viaje

@synthesize idViaje;
@synthesize lugar;
@synthesize descripcion;
@synthesize plazas;
@synthesize precio;
@synthesize nombreImagen;

-(id) initWithLugar:(NSString *) lugarI descripcion:(NSString *) descripcionI plazas:(int) plazasI precio:(double) precioI nombreImange:(NSString *) nombreImagenI{

    lugar = lugarI;
    descripcion = descripcionI;
    plazas = plazasI;
    precio = precioI;
    nombreImagen =nombreImagenI;
    return self;
}


@end
