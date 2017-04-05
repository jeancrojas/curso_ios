//
//  Pedido.h
//  ProjectRestaurante
//
//  Created by cice on 5/4/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pedido : NSObject {
    int idPedido;
    NSString *fecha;
    int idBebida;
    int  idPlato;
    double precio;
}

@property (nonatomic,assign) int idPedido;
@property (nonatomic,retain) NSString *fecha;
@property (nonatomic,assign) int idBebida;
@property (nonatomic,assign) int  idPlato;
@property (nonatomic,assign) double precio;



@end
