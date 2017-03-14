//
//  Restaurante.m
//  InfoRestaurante
//
//  Created by cice on 14/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "Restaurante.h"

@implementation Restaurante

@synthesize nombre;
@synthesize nombreImagenRestaurante;
@synthesize web;
@synthesize descripcion;
@synthesize coordenadaLatitud;
@synthesize coordenadaLongitud;

- (id) initWithNombre:(NSString *)nombreR
nombreImagenRestaurante:(NSString *)nombreImagenRestauranteR
                  web:(NSString *)webR
          descripcion:(NSString *)descripcionR
    coordenadaLatitud:(double)coordenadaLatitudR
   coordenadaLongitud:(double)coordenadaLongitudR {
    
    nombre = nombreR;
    nombreImagenRestaurante = nombreImagenRestauranteR;
    web = webR;
    descripcion = descripcionR;
    coordenadaLatitud = coordenadaLatitudR;
    coordenadaLongitud = coordenadaLongitudR;
    
    return self;
}

@end
