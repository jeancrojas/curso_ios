//
//  Animal.h
//  AccesoAFicheroObject
//
//  Created by cice on 6/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Animal : NSObject{
    
    long identificador;
    NSString *nombre;
    
}

@property long identificador;
@property (nonatomic, retain) NSString *nombre;
-(Boolean ) anyadirAnimal:(int)identificador End:(NSString *)nombre;

@end
