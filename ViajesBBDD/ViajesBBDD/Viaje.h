//
//  Viaje.h
//  ViajesBBDD
//
//  Created by cice on 22/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Viaje : NSObject {
    long idViaje;
    NSString *lugar;
    NSString *descripcion;
    int plazas;
    double precio;
    NSString *nombreImagen;
}
@property (nonatomic, assign) long idViaje;
@property (nonatomic,retain) NSString *lugar;
@property (nonatomic,retain) NSString *descripcion;
@property (nonatomic, assign) int plazas;
@property (nonatomic, assign) double precio;
@property (nonatomic, retain) NSString *nombreImagen;

-(id) initWithLugar:(NSString *) lugarI descripcion:(NSString *) descripcionI plazas:(int) plazasI precio:(double) precioI nombreImange:(NSString *) nombreImagenI;


@end
