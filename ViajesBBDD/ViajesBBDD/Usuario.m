//
//  Usuario.m
//  ViajesBBDD
//
//  Created by cice on 23/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import "Usuario.h"

@implementation Usuario
@synthesize idUsuario;
@synthesize userAccount;
@synthesize passAccount;
@synthesize nombre;
@synthesize apellido;
@synthesize esAdmin;

-(id) initWithIdUsuario: (int) idUsuarioI userAccount:(NSString *)userAccountI
            passAccount:(NSString *) passAccountI nombre:(NSString *)nombreI
               apellido:(NSString *)apellidoI esAdmin:(Boolean)esAdminI{
    idUsuario = idUsuarioI;
    userAccount = userAccountI;
    passAccount = passAccountI;
    nombre = nombreI;
    apellido = apellidoI;
    esAdmin = esAdminI;
    
    return self;
}

@end
