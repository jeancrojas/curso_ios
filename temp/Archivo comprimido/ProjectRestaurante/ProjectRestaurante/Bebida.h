//
//  Bebida.h
//  ProjectRestaurante
//
//  Created by cice on 30/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Bebida : NSObject {
    int idBebida;
    NSString *nombre;
    double precio;
    NSString *descripcion;
    int idTipoBebida;
}

@property (nonatomic, assign) int idBebida;
@property (nonatomic, retain) NSString *nombre;
@property (nonatomic, assign) double precio;
@property (nonatomic, retain) NSString *descripcion;
@property (nonatomic, assign) int idTipoBebida;

-(id)initWithIdBebida:(int)idBebidaI nombre:(NSString *)nombreI precio:(double)precioI descripcion:(NSString *)descripcionI idTipoBebida:(int)idTipoBebidaI;

@end
