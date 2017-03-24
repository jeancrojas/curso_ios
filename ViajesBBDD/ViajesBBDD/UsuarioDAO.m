//
//  UsuarioDAO.m
//  ViajesBBDD
//
//  Created by cice on 23/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "UsuarioDAO.h"
#import "Usuario.h"

@implementation UsuarioDAO

-(NSMutableArray *) obtenerContactos{
    NSMutableArray *listaContactos = [[NSMutableArray alloc]init];
    NSString *ubicacionDB = [self obtenerRutaDB];
    NSLog(@"Ubicación de la BBDD: %@",ubicacionDB);
    
    if (!(sqlite3_open([ubicacionDB UTF8String], &bbddUsuarioDAO) == SQLITE_OK)) {
        NSLog(@"No se puede conectar con la BD");
    }
    
    const char *sentenciasSQL = "SELECT * FROM usuario";
    sqlite3_stmt *sqlStatement;
    
    if (!(sqlite3_prepare_v2(bbddUsuarioDAO, sentenciasSQL, -1, &sqlStatement, NULL) == SQLITE_OK)) {
        NSLog(@"Problema al preparar el statement");
    }
    
    while (sqlite3_step(sqlStatement) == SQLITE_ROW) {
        Usuario *usuario = [[Usuario alloc]init];
        
        usuario.idUsuario = sqlite3_column_int(sqlStatement, 0);
        usuario.userAccount = [NSString stringWithUTF8String:(char *)sqlite3_column_text(sqlStatement, 1)];
        usuario.nombre = [NSString stringWithUTF8String:(char *) sqlite3_column_text(sqlStatement, 2)];
        usuario.apellido = [NSString stringWithUTF8String:(char *)sqlite3_column_text(sqlStatement, 3)];
        usuario.esAdmin = sqlite3_column_int(sqlStatement, 4) ;
        usuario.passAccount = [NSString stringWithUTF8String:(char *)sqlite3_column_text(sqlStatement, 5)];;
        
        [listaContactos addObject:usuario];
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
    
    if (!(sqlite3_open([ubicacionDB UTF8String], &bbddUsuarioDAO) == SQLITE_OK)) {
        NSLog(@"No se puede conectar con la BD");
        return false;
    }
    
    sqlite3_stmt *sqlStatement;
    
    
    
    if (!(sqlite3_prepare_v2(bbddUsuarioDAO, sentenciaSQL, -1, &sqlStatement, NULL) == SQLITE_OK)) {
        NSLog(@"Problema al preparar el statement");
        return false;
    }
    
    if (SQLITE_DONE != sqlite3_step(sqlStatement)) {
        
    }
    
    sqlite3_reset(sqlStatement);
    sqlite3_finalize(sqlStatement);
    sqlite3_close(bbddUsuarioDAO);
    
    
    return true;
}



@end
