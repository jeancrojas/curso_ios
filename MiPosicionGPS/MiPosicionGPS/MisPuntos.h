//
//  MisPuntos.h
//  MiPosicionGPS
//
//  Created by cice on 9/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MisPuntos : NSObject {
    
    NSString *nombre;
    double latitud;
    double longitud;
}

@property (nonatomic, retain) NSString *nombre;
@property double latitud;
@property double longitud;


-(id) inttMisPuntos:(NSString *)nombre2 latitud:(double)latitud2 longitud:(double)longitud2;


@end
