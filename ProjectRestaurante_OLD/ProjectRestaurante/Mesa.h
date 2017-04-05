//
//  Mesa.h
//  ProjectRestaurante
//
//  Created by cice on 21/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Mesa : NSObject {
    int idMesa;
    int numeroComensales;
}

@property (nonatomic, assign) int idMesa;
@property (nonatomic, assign) int numeroComensales;

-(id)initWithId:(int)idMensaIntroducida NumeroComensales:(int)numeroComensalesIntroducido;


@end
