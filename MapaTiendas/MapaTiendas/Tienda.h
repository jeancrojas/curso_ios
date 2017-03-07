//
//  Tienda.h
//  MapaTiendas
//
//  Created by cice on 7/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tienda : NSObject{
    NSString *nombre;
    int tipo;
    int cP;
    double coordX;
    double coordY;
}

@property (nonatomic, retain) NSString *nombre;
@property int tipo;
@property int cP;
@property double coordX;
@property double coordY;

- (Boolean) anyadirTienda: (NSString *)nombreT tipo: (int)tipoT codPostal:(int) cPT coordX:(double) coordXT coordY:(double) coordXT;

@end
