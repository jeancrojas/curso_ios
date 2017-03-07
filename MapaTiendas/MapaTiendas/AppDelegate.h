//
//  AppDelegate.h
//  MapaTiendas
//
//  Created by cice on 7/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, retain) NSMutableArray *listaTiendas;
@property int TIPO_INFORMATICA;
@property int TIPO_ELECTRONICA;
@property int TIPO_CENTRO_DE_FORMACION;


@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

