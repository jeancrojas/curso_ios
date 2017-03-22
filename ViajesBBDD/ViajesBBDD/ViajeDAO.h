//
//  ViajeDAO.h
//  ViajesBBDD
//
//  Created by cice on 22/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>

@interface ViajeDAO : NSObject {
    sqlite3 *bd;
}

-(NSMutableArray *) obtenerContactos;
-(NSString *) obtenerRutaDB;
-(BOOL) anyadirViaje:(NSString *)lugarI Descripcion:(NSString *)descripcionI Plazas:(int)plazasI Precio:(double)precioI NombreImagen:(NSString *)nombreImagen;



@end
