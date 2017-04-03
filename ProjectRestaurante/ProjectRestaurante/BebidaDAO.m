//
//  BebidaDAO.m
//  ProjectRestaurante
//
//  Created by cice on 30/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "BebidaDAO.h"
#import "Bebida.h"

@implementation BebidaDAO

-(NSMutableArray *) obtenerBebidas{
    NSMutableArray *listaBebidas = [[NSMutableArray alloc]init];
    NSString *ubicacionDB = [self obtenerRutaDB];
    NSLog(@"Ubicación de la BBDD: %@",ubicacionDB);
    
    if (!(sqlite3_open([ubicacionDB UTF8String], &bbddUsuarioDAO) == SQLITE_OK)) {
        NSLog(@"No se puede conectar con la BD");
    }
    
    const char *sentenciasSQL = "SELECT * FROM Bebida";
    sqlite3_stmt *sqlStatement;
    
    if (!(sqlite3_prepare_v2(bbddUsuarioDAO, sentenciasSQL, -1, &sqlStatement, NULL) == SQLITE_OK)) {
        NSLog(@"Problema al preparar el statement");
    }
    
    while (sqlite3_step(sqlStatement) == SQLITE_ROW) {
        Bebida *bebida = [[Bebida alloc]init];
        
        bebida.idBebida = sqlite3_column_int(sqlStatement, 0);
        bebida.nombre = [NSString stringWithUTF8String:(char *)sqlite3_column_text(sqlStatement, 1)];
        bebida.precio = sqlite3_column_double(sqlStatement, 2);
        bebida.descripcion = [NSString stringWithUTF8String:(char *)sqlite3_column_text(sqlStatement, 3)];
        bebida.idTipoBebida = sqlite3_column_int(sqlStatement, 4) ;
        
        [listaBebidas addObject:bebida];
    }
    return listaBebidas;
}

-(NSString *) obtenerRutaDB{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDir = [paths objectAtIndex:0];
    NSString *dbPath = [documentsDir stringByAppendingPathComponent:@"RestaurantesBBDD.db"];
    
    return dbPath;
}
@end
