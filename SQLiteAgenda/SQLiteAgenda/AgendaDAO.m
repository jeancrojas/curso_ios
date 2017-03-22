//
//  AgendaDAO.m
//  SQLiteAgenda
//
//  Created by cice on 21/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "AgendaDAO.h"
#import "Agenda.h"

@implementation AgendaDAO

-(NSMutableArray *) obtenerContactos{
    NSMutableArray *listaContactos = [[NSMutableArray alloc]init];
    NSString *ubicacionDB = [self obtenerRutaDB];
    NSLog(@"Ubicación de la BBDD: %@",ubicacionDB);
    
    if (!(sqlite3_open([ubicacionDB UTF8String], &bd) == SQLITE_OK)) {
        NSLog(@"No se puede conectar con la BD");
    }
    
    const char *sentenciasSQL = "SELECT * FROM contactos";
    sqlite3_stmt *sqlStatement;
    
    if (!(sqlite3_prepare_v2(bd, sentenciasSQL, -1, &sqlStatement, NULL) == SQLITE_OK)) {
        NSLog(@"Problema al preparar el statement");
    }
    
    while (sqlite3_step(sqlStatement) == SQLITE_ROW) {
        Agenda *agendaContactos = [[Agenda alloc]init];
        
        agendaContactos.idAgenda = sqlite3_column_int(sqlStatement, 0);
        agendaContactos.nombre = [NSString stringWithUTF8String:(char *)sqlite3_column_text(sqlStatement, 1)];
        agendaContactos.telefono = [NSString stringWithUTF8String:(char *) sqlite3_column_text(sqlStatement, 2)];
        agendaContactos.direccion = [NSString stringWithUTF8String:(char *) sqlite3_column_text(sqlStatement, 3)];
        
        [listaContactos addObject:agendaContactos];
    }
    return listaContactos;
}

-(NSString *) obtenerRutaDB{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDir = [paths objectAtIndex:0];
    NSString *dbPath = [documentsDir stringByAppendingPathComponent:@"agenda.sqlite"];
    
    return dbPath;
}

-(BOOL) anyadirContactos:(NSString *)nombreA Telefono:(NSString *)telefonoA Direccion:(NSString *)direccionA {
    
    
    const char *sentenciaSQL = [[NSString stringWithFormat: @"INSERT INTO contactos (nombre,telefono,direccion) VALUES ('%@', '%@', '%@')", nombreA, telefonoA, direccionA] UTF8String];
    NSString *ubicacionDB = [self obtenerRutaDB];
    NSLog(@"Ubicación de la BBDD: %@ \nLa sentencia es: %s",ubicacionDB, sentenciaSQL);
    
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
        
        //
    }
    
    sqlite3_reset(sqlStatement);
    sqlite3_finalize(sqlStatement);
    sqlite3_close(bd);
    
    
    return true;
}

@end
