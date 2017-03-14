//
//  Restaurante.h
//  InfoRestaurante
//
//  Created by cice on 14/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Restaurante : NSObject {
    NSString *nombre;
    NSString *nombreImagenRestaurante;
    NSString *web;
    NSString *descripcion;
    double coordenadaLatitud;
    double coordenadaLongitud;
}

@property (nonatomic,retain) NSString *nombre;
@property (nonatomic,retain) NSString *nombreImagenRestaurante;
@property (nonatomic,retain) NSString *web;
@property (nonatomic,retain) NSString *descripcion;
@property double coordenadaLatitud;
@property double coordenadaLongitud;

- (id) initWithNombre:(NSString *)nombreR
nombreImagenRestaurante:(NSString *)nombreImagenRestauranteR
                  web:(NSString *)webR
          descripcion:(NSString *)descripcionR
    coordenadaLatitud:(double)coordenadaLatitudR
   coordenadaLongitud:(double)coordenadaLongitudR;

@end
