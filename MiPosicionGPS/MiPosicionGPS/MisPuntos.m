//
//  MisPuntos.m
//  MiPosicionGPS
//
//  Created by cice on 9/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "MisPuntos.h"

@implementation MisPuntos

@synthesize nombre;
@synthesize latitud;
@synthesize longitud;



-(id) inttMisPuntos:(NSString *)nombreMP latitud:(double)latitudMP longitud:(double)longitudMP{
    
    
    nombre = nombreMP;
    latitud = latitudMP;
    longitud = longitudMP;
    
    return self;
        
}


@end
