//
//  Concursante.h
//  Quiz
//
//  Created by cice on 10/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Concursante : NSObject{
    
    NSString *alias;
    int puntuacion;
    
}

@property int puntuacion;
@property (nonatomic, retain) NSString *alias;

-(id) intConsursante:(NSString *)aliasC puntuacion:(int)puntuacionC;
@end
