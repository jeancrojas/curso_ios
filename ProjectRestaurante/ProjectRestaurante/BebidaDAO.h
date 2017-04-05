//
//  BebidaDAO.h
//  ProjectRestaurante
//
//  Created by cice on 30/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>

@interface BebidaDAO : NSObject {
    sqlite3 *bbddUsuarioDAO;
}

-(NSMutableArray *) obtenerBebidas;
-(NSString *) obtenerRutaDB;
-(BOOL) anyadirBebida:(int)idPedido idBebida:(int)idBebida cantidad:(int)cantidad;


@end
