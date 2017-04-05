//
//  PlatoDAO.m
//  ProjectRestaurante
//
//  Created by cice on 30/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "PlatoDAO.h"
#import "Plato.h"

@implementation PlatoDAO

-(NSMutableArray *) obtenerPlatos{
    NSMutableArray *listaPlatos = [[NSMutableArray alloc]init];
    NSString *ubicacionDB = [self obtenerRutaDB];
    NSLog(@"Ubicación de la BBDD: %@",ubicacionDB);
    
    if (!(sqlite3_open([ubicacionDB UTF8String], &bbddPlatoDAO) == SQLITE_OK)) {
        NSLog(@"No se puede conectar con la BD");
    }
    
    const char *sentenciasSQL = "SELECT * FROM Plato";
    sqlite3_stmt *sqlStatement;
    
    if (!(sqlite3_prepare_v2(bbddPlatoDAO, sentenciasSQL, -1, &sqlStatement, NULL) == SQLITE_OK)) {
        NSLog(@"Problema al preparar el statement");
    }
    
    while (sqlite3_step(sqlStatement) == SQLITE_ROW) {
        Plato *plato = [[Plato alloc]init];
        
        plato.idPlato = sqlite3_column_int(sqlStatement, 0);
        plato.nombre = [NSString stringWithUTF8String:(char *)sqlite3_column_text(sqlStatement, 1)];
        plato.precio = sqlite3_column_double(sqlStatement, 2);
        plato.descripcion = [NSString stringWithUTF8String:(char *)sqlite3_column_text(sqlStatement, 3)];
        plato.idTipoPlato = sqlite3_column_int(sqlStatement, 4) ;
        
        [listaPlatos addObject:plato];
    }
    return listaPlatos;
}

-(NSString *) obtenerRutaDB{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDir = [paths objectAtIndex:0];
    NSString *dbPath = [documentsDir stringByAppendingPathComponent:@"RestaurantesBBDD.db"];
    //NSString *dbPath = [[[NSBundle mainBundle]resourcePath] stringByAppendingPathComponent:@"RestaurantesBBDD.db"];
    //NSString *dbPath = [[[NSBundle mainBundle] resourcePath]stringByAppendingPathComponent:@"RestaurantesBBDD.db"];

    return dbPath;
}



@end
