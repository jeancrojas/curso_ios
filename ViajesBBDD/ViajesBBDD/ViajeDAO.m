//
//  ViajeDAO.m
//  ViajesBBDD
//
//  Created by cice on 22/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "ViajeDAO.h"
#import "Viaje.h"

@implementation ViajeDAO

-(NSMutableArray *) obtenerContactos{
    NSMutableArray *listaContactos = [[NSMutableArray alloc]init];
    NSString *ubicacionDB = [self obtenerRutaDB];
    NSLog(@"Ubicación de la BBDD: %@",ubicacionDB);
    
    if (!(sqlite3_open([ubicacionDB UTF8String], &bd) == SQLITE_OK)) {
        NSLog(@"No se puede conectar con la BD");
    }
    
    const char *sentenciasSQL = "SELECT * FROM viaje";
    sqlite3_stmt *sqlStatement;
    
    if (!(sqlite3_prepare_v2(bd, sentenciasSQL, -1, &sqlStatement, NULL) == SQLITE_OK)) {
        NSLog(@"Problema al preparar el statement");
    }
    
    while (sqlite3_step(sqlStatement) == SQLITE_ROW) {
        Viaje *viajeDestino = [[Viaje alloc]init];
        
        viajeDestino.idViaje = sqlite3_column_int(sqlStatement, 0);
        viajeDestino.lugar = [NSString stringWithUTF8String:(char *)sqlite3_column_text(sqlStatement, 1)];
        viajeDestino.descripcion = [NSString stringWithUTF8String:(char *) sqlite3_column_text(sqlStatement, 2)];
        viajeDestino.plazas = sqlite3_column_int(sqlStatement, 3);
        viajeDestino.precio = sqlite3_column_double(sqlStatement, 4) ;
        viajeDestino.nombreImagen = [NSString stringWithUTF8String:(char *)sqlite3_column_text(sqlStatement, 5)];;
        
        [listaContactos addObject:viajeDestino];
    }
    return listaContactos;
}

-(NSString *) obtenerRutaDB{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDir = [paths objectAtIndex:0];
    NSString *dbPath = [documentsDir stringByAppendingPathComponent:@"viajes.db"];
    
    return dbPath;
}

-(BOOL) anyadirViaje:(NSString *)lugarI Descripcion:(NSString *)descripcionI Plazas:(int)plazasI Precio:(double)precioI NombreImagen:(NSString *)nombreImagen {
    
    
    const char *sentenciaSQL = [[NSString stringWithFormat: @"INSERT INTO viaje (lugar,descripcion,plazas,precio,nombreImagen) VALUES ('%@', '%@', '%d', '%f','%@' )", lugarI, descripcionI, plazasI,precioI,nombreImagen] UTF8String];
    NSString *ubicacionDB = [self obtenerRutaDB];
    
    if (!(sqlite3_open([ubicacionDB UTF8String], &bd) == SQLITE_OK)) {
        NSLog(@"No se puede conectar con la BD");
        return false;
    }
    
    sqlite3_stmt *sqlStatement;
    
    
    
    if (!(sqlite3_prepare_v2(bd, sentenciaSQL, -1, &sqlStatement, NULL) == SQLITE_OK)) {
        NSLog(@"Problema al preparar el statement");
        return false;
    }
    
    if (SQLITE_DONE != sqlite3_step(sqlStatement)) {
        
    }
    
    sqlite3_reset(sqlStatement);
    sqlite3_finalize(sqlStatement);
    sqlite3_close(bd);
    
    
    return true;
}


@end
