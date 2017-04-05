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
    //int numeroComensales;
    double precio;
}

@property (nonatomic, assign) int idMesa;
//@property (nonatomic, assign) int numeroComensales;
@property (nonatomic, assign) double precio;

-(id)initWithId:(int)idMensaIntroducida precio:(double)precioIntroducido;


@end
