//
//  PlatoDAO.h
//  ProjectRestaurante
//
//  Created by cice on 30/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>

@interface PlatoDAO : NSObject{
    sqlite3 *bbddUsuarioDAO;
}

-(NSMutableArray *) obtenerContactos;
-(NSString *) obtenerRutaDB;

@end
