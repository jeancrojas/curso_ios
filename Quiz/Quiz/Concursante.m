//
//  Concursante.m
//  Quiz
//
//  Created by cice on 10/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "Concursante.h"

@implementation Concursante

@synthesize alias;
@synthesize puntuacion;

-(id) intConsursante:(NSString *)aliasC puntuacion:(int)puntuacionC {

    alias = aliasC;
    puntuacion = puntuacionC;
    
    return self;
}


@end
