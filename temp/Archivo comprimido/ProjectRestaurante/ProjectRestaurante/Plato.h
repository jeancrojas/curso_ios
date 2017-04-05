//
//  Plato.h
//  ProjectRestaurante
//
//  Created by cice on 30/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Plato : NSObject {
    int idPlato;
    NSString *nombre;
    double precio;
    NSString *descripcion;
    int idTipoPlato;
}

@property (nonatomic, assign) int idPlato;
@property (nonatomic, retain) NSString *nombre;
@property (nonatomic, assign) double precio;
@property (nonatomic, retain) NSString *descripcion;
@property (nonatomic, assign) int idTipoPlato;

-(id)initWithIdPlato:(int) idPlatoI nombre:(NSString *)nombreI precio:(double)precioI descripcion:(NSString *)descripcionI idTipoPlato:(int)idTipoPlatoI;

@end
