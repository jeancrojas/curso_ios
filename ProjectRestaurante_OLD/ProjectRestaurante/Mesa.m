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
    @synthesize numeroComensales;

-(id)initWithId:(int)idMensaIntroducida NumeroComensales:(int)numeroComensalesIntroducido {
    idMesa = idMensaIntroducida;
    numeroComensales = numeroComensalesIntroducido;
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"Numero de Mesa %d, con numero de comensales: %d", idMesa,numeroComensales];
}

@end
