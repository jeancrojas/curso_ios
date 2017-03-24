//
//  Usuario.h
//  ViajesBBDD
//
//  Created by cice on 23/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Usuario : NSObject {
    int idUsuario;
    NSString *userAccount;
    NSString *passAccount;
    NSString *nombre;
    NSString *apellido;
    Boolean esAdmin;
}
@property (nonatomic, assign) int idUsuario;
@property (nonatomic, retain) NSString *userAccount;
@property (nonatomic, retain) NSString *passAccount;
@property (nonatomic, retain) NSString *nombre;
@property (nonatomic, retain) NSString *apellido;
@property (nonatomic, assign) Boolean esAdmin;


@end
