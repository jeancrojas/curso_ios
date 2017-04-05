//
//  Mesa.m
//  ProjectRestaurante
//
//  Created by cice on 21/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "Mesa.h"

@implementation Mesa
    @synthesize idMesa;
    //@synthesize numeroComensales;
    @synthesize precio;

-(id)initWithId:(int)idMensaIntroducida precio:(double)precioIntroducido {
    idMesa = idMensaIntroducida;
    precio = precioIntroducido;
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"Numero de Mesa %d, con importe a pagar: %f", idMesa,precio];
}

@end
