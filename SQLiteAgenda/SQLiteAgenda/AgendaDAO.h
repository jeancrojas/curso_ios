//
//  AgendaDAO.h
//  SQLiteAgenda
//
//  Created by cice on 21/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>

@interface AgendaDAO : NSObject{
    sqlite3 *bd;
}

-(NSMutableArray *) obtenerContactos;
-(NSString *) obtenerRutaDB;
-(BOOL) anyadirContactos:(NSString *)nombreA Telefono:(NSString *)telefonoA Direccion:(NSString *)direccionA;

@end
