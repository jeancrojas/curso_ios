//
//  UsuarioDAO.h
//  ViajesBBDD
//
//  Created by cice on 23/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>

@interface UsuarioDAO : NSObject {
    sqlite3 *bbddUsuarioDAO;
}

-(NSMutableArray *) obtenerContactos;
-(NSString *) obtenerRutaDB;
-(BOOL) anyadirViaje:(NSString *)lugarI Descripcion:(NSString *)descripcionI Plazas:(int)plazasI Precio:(double)precioI NombreImagen:(NSString *)nombreImagen;

@end
