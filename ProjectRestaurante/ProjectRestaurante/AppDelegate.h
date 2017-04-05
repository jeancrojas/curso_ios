//
//  AppDelegate.h
//  ProjectRestaurante
//
//  Created by cice on 21/3/17.
//  Copyright © 2017 scriptingsystems. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import <sqlite3.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;
@property (nonatomic, retain) NSMutableArray *listaMesa;
@property (nonatomic, assign) NSInteger numMesasTemporal;
//Numero de mesa que se tiene seleccionada
@property (nonatomic, assign) int mesaSeleccionada;

- (void)saveContext;


@end

