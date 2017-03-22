//
//  Agenda.h
//  SQLiteAgenda
//
//  Created by cice on 21/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Agenda : NSObject{

    int idAgenda;
    NSString *nombre;
    NSString *telefono;
    NSString *direccion;

}
@property (nonatomic, assign) int idAgenda;
@property (nonatomic, retain) NSString *nombre;
@property (nonatomic, retain) NSString *telefono;
@property (nonatomic, retain) NSString *direccion;


@end
